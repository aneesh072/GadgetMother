<?php

namespace aitsydney;

use aitsydney\Database;
use \Exception;

class ShoppingCart extends Database{
  private $response = array();
  private $errors = array();

  public function __construct(){
    parent::__construct();
  }

  private function getUserAuthStatus(){
    //check if session has started
    if( session_status() == PHP_SESSION_NONE ){
      session_start();
    }
    //check if user is authenticated
    return ( isset( $_SESSION['auth'] ) ) ? $_SESSION['auth'] : false;
  }

  public function getUserCart( $account_id, $create_new = true ){
    //find the user's shopping cart that is active
    $find_query = "
      SELECT cart_id FROM shopping_cart WHERE active = 1;
    ";
    $result = $this -> runQuery( $find_query );
    //test only
    print_r( $result );
  }

  private function runQuery( String $query, Array $params = array() ){
    $response = array();
    $errors = array();
    $return_result = false ;
    //check the type of query
    //remove any spaces before or after the string and convert to lower case
    $lower = strtolower( trim($query) );
    if( strpos($lower, 'select') == 0 ){
      $return_result = true ;
    }
    //if parameters are supplied, check if they match the query slots (the ?)
    $param_count = count( $params );
    //check the types of parameters
    $param_types = array();
    if( count($params) > 0 ){
      foreach( $params as $param ){
        if( is_int($param) ){
          array_push( $param_types, 'i');
        }
        elseif( is_string($param) ){
          array_push( $param_types, 's');
        }
        elseif( is_double($param) ){
          array_push( $param_types, 'd');
        }
        else{
          array_push( $param_types, 'b');
        }
      }
    }
    //create param string for bind_param
    $param_string = implode('' , $param_types );

    //count how many ? are in the query
    $slot_count = substr_count( $query, '?' );
    //check if number of parameters match the ? in the query
    if( $slot_count !== $param_count ){
      $errors['parameter'] = 'parameter count mismatch';
      $response['success'] = false;
      $response['errors'] = $errors;
      return $response;
    }
    //run the query
    try{
      $statement = $this -> connection -> prepare( $query );
      if( !$statement ){
        throw new Exception('query error');
      }
      if( $slot_count > 0 ){
        if( !bind_param($param_string, ...$params ) ){
          throw new Exception('binding error');
        }
      }
      if( !$statement -> execute() ){
        throw new Exception('execute error');
      }
    }
    catch( Exception $exc ){
      $errors['database'] = $exc -> getMessage();
      $response['success'] = false;
      $response['errors'] = $errors;
      return $response;
    }
    
    //process query further
    if( !$return_result ){
      $response['success'] = true;
      return $response;
    }
    else{
      $db_data = array();
      $result = $statement -> get_result();
      while( $row = $result -> fetch_assoc() ){
        array_push( $db_data, $row );
      }
      $response['success'] = true;
      $response['data'] = $db_data;
      return $response;
    }
    
  }
}
?>