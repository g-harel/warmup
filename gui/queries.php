<?php


$servername = "localhost";
$password = "pw";
$username = "user";
$db = "db";

$conn = mysqli_connect($servername, $username, $password, $db);


if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

//set the variables given by the user

$input = "";

if(isset($_POST["input"])){
  $input = $_POST["input"];
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

];

$queriesWithInput = [
  
  //q5
  "SELECT students.name
    FROM   members
    JOIN students
    ON students.sid = members.sid
    WHERE  members.tid =" . $input . ";",
    
  //q6
    "SELECT *
    FROM   teams
    JOIN demos
    ON teams.leaderId = demos.sid
    WHERE  demos.date = " . $input . ";", //2018-01-11

];


 if(isset($_POST["table"]) && $_POST["table"] != -1){
   $sql = $queriesFromDropdown[$_POST["table"]];
  }
  
  if(isset($_POST['givenQ'])) {
    $sql = $queriesWithInput[$_POST["givenQ"]];
  }

 $result = mysqli_query($conn, $sql);
 
 $arr = mysqli_fetch_assoc($result);
 $arrKeys = array_keys($arr);
 



 if (mysqli_num_rows($result) > 0) {
     // output data of each row
     echo "<table>";
     
     for($i = 0; $i < sizeof($arrKeys); $i++){
       echo "<th>".$arrKeys[$i]."</th>";
     }
     
     while ($row = mysqli_fetch_row($result))
   {
       echo '<tr>';
          
          for($r = 0; $r < sizeof($row); $r++){
            echo '<td>'.$row[$r]."</td>";
          }
      
      echo '</tr>';
   }

   echo "</table>";
 }

?>