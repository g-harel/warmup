<!DOCTYPE html>
<!--Started with the basic Bootstrap 4 template-->
<html lang="en">
  <head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">


  </head>
  <body>
    <form action = "queries.php" method="post">
      
      <input type = "text" name = "input"/>
      <br/><br />

      <input type="radio" name="givenQ" value=0>5. Given a TID, list the names of the members.<br>
      <input type="radio" name="givenQ" value=1>6. Given a date, list all the teams that have demos on that day.<br>
      <input type="radio" name="givenQ" value=2>8. Given a student Name or ID, find his/her team ID.<br> 
      <input type="radio" name="givenQ" value=3>9. Given a student Name or ID, find the names and SID of his/her teammates.
      
      
      <br /><br />
      
      <select name="table">
        <option value=-1>Other queries</option>
        <option value=0>1. Which student(s) is not a member of any team?</option>
        <option value=1>2. For each team, list its members.</option>
        <option value=2>3. Who was not present in the demo of a team?</option>
        <option value=3>4. List the teams which that have <4 members.</option>
        <option value=4>7. For each team that is not complete (<4 members), list the TID and the capacity to increase. (That is, if a team has 1 member, the capacity to increase would be 3).</option>
      </select>
      <br /><br />
      
      <button type ="submit">Query</button>
    </form>

  </body>
</html>
