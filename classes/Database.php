<?php
namespace aitsydney;
class Database{
    protected $connection;
    protected function __construct(){
        $this -> connection = mysqli_connect(
            getenv ('host'),
            getenv ('user'),
            getenv ('password'),
            getenv ('database')
        );
    }
}
?>