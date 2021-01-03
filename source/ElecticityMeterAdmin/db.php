<?php
/**
* Simple MySQLi Database class for PHP7.*
* The class contains main functions for your database. For a detailed documentation, see: https://webdeasy.de/en/php-database-class
* created 08.11.2017
* updated: 10.05.2020
* 
* @author LH
*/
class Database {

  private $host, $database, $username, $password, $connection;
  private $port = 3306;
  
  /**
  * Sets the connection credentials to connect to your database.
  *
  * @param string $host - the host of your database
  * @param string $username - the username of your database
  * @param string $password - the password of your database
  * @param string $database - your database name
  * @param integer $port - the port of your database
  * @param boolean $autoconnect - to auto connect to the database after settings connection credentials
  */
  function __construct($host, $username, $password, $database, $port = 3306, $autoconnect = true) {
    $this->host = $host;
    $this->database = $database;
    $this->username = $username;
    $this->password = $password;
    $this->port = $port;

    if($autoconnect) $this->open();
  }

  /**
  * Open the connection to your database.
  */
  function open() {
    $this->connection = new mysqli($this->host, $this->username, $this->password, $this->database, $this->port);
  }

  /**
  * Close the connection to your database.
  */
  function close() {
    $this->connection->close();
  }

  /**
  *
  * Execute your query
  *
  * @param string $query - your sql query
  * @return the result of the executed query 
  */
  function query($query) {
    return $this->connection->query($query);
  }

  /**
  * Escape your parameters to prevent SQL Injections! Usage: See documentation (link at the top of the file)
  *
  * @param string $string - your parameter to escape
  * @return the escaped string 
  */
  function escape($string) {
    return $this->connection->escape_string($string);
  }
}
?>