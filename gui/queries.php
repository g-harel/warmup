<?php

// $servername = "lzc353.encs.concordia.ca";
// $password = "Logmein2";
// $username = "lzc353_4";
// $db = "lzc353_4";

$servername = "localhost";
$password = "";
$username = "root";
$db = "db";

$conn = mysqli_connect($servername, $username, $password, $db);


if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

//set the variables given by the user

$tid = "";
$date = "";
$name8 = "";
$sid8 = "";
$name9 = "";
$sid9 = "";

if(isset($_POST["tid"])){
  $tid = $_POST["tid"];
  
}

if(isset($_POST["date"])){
  $date = $_POST["date"];
}

if(isset($_POST["name8"])){
  $name8 = $_POST["name8"];
}

if(isset($_POST["sid8"])){
  $sid8 = $_POST["sid8"];
}

if(isset($_POST["name9"])){
  $name9 = $_POST["name9"];
}

if(isset($_POST["sid9"])){
  $sid9 = $_POST["sid9"];
}


//list the queries here and we'll just call them when we have to
$queriesFromDropdown = [
  
  //q1
  "SELECT sid, name 
  FROM students 
  WHERE  sid IN (SELECT sid 
                  FROM members 
                  WHERE  members.tid NOT IN (SELECT tid 
                                            FROM   teams));",
  
  //q2
  "SELECT teams.tid, Group_concat(students.name SEPARATOR ', ')
  FROM   members
   JOIN students
     ON students.sid = members.sid
   JOIN teams
     ON members.tid = teams.tid
  GROUP BY teams.tid;",
  
  //q3
  "SELECT sid, name
    FROM   students
    WHERE  sid NOT IN (SELECT sid
    FROM   demos);",

  //q4
  "SELECT tid, leaderId
    FROM   teams
    WHERE noOfMembers < 4;",
  
  //q7
  "SELECT tid, 4 - noOfMembers as capacity
    FROM   teams
    WHERE  noOfMembers < 4;",

  //Students table
  "SELECT * FROM students;",

  //Members table
  "SELECT * FROM members;",

  //Demos table
  "SELECT * FROM demos;",

  //Teams table
  "SELECT * FROM teams;",

  //Projects table
  "SELECT * FROM projects;",

];

$queriesWithInput = [
  
  //q5
  "SELECT students.name
    FROM   members
    JOIN students
    ON students.sid = members.sid
    WHERE  members.tid =" . $tid . ";",
    
  //q6
  "SELECT *
    FROM   teams
    JOIN demos
    ON teams.leaderId = demos.sid
    WHERE  demos.date = " . $date . ";", //2018-01-11

  //q8
  "SELECT members.tid
    FROM students
    JOIN members ON students.sid = members.sid
    WHERE students.name = '" . $name8 . "' OR students.sid = '" . $sid8 . "';",

  //9
  "SELECT sid
    FROM members
    WHERE tid = (SELECT members.tid
      FROM students
      JOIN members ON students.sid = members.sid
      WHERE students.name = '" . $name9 . "' OR students.sid = '" . $sid9 . "');",

];

if(isset($_POST['givenQ'])){

  if($_POST['givenQ'] == -1){
    $sql = $queriesFromDropdown[$_POST["table"]];
  }
  else{
    $sql = $queriesWithInput[$_POST["givenQ"]];
  }

}
else{
  echo "<h1>Please click on a radio button next to one of the query</h1>";
  exit;
}



echo "<h3>" .$sql. "</h3>";

 $result = mysqli_query($conn, $sql);
  

 if (mysqli_num_rows($result) > 0) {

    $arr = mysqli_fetch_assoc($result);
    $arrKeys = array_keys($arr);

    // output data of each row
    echo "<table>";

    for($i = 0; $i < sizeof($arrKeys); $i++){
      echo "<th style='border: 1px solid #ddd; padding: 8px'>".$arrKeys[$i]."</th>";
    }

    $result = mysqli_query($conn, $sql);

    while ($row = mysqli_fetch_row($result)) {
         
      echo '<tr>';
          
      for($r = 0; $r < sizeof($row); $r++){
        echo "<td style='border: 1px solid #ddd; padding: 8px'>".$row[$r]."</td>";
      }
        
      echo '</tr>';
   }
   echo "</table>";
 }

 else{
   echo "<h1>No results</h1>";
 }

?>
