<?php
class DataManager {
  function getData()
  {
    mysql_connect('localhost', 'root', '');
    mysql_select_db('contacts');
    return mysql_query(sprintf(
      "SELECT personid, firstname, lastname
      FROM person
      ORDER BY lastname, firstname"));
  }
}
?>
