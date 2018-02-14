<!DOCTYPE html>
<!--Started with the basic Bootstrap 4 template-->
<html lang="en">

  <head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <style>
    div {
        width: 500px;
        padding: 10px;
        border: 5px solid gray;
        margin: 0;
    }

    button {
        background-color: #008CBA;  
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
    }

    </style>
  </head>

  <body>
    <form action = "queries.php" method="post">

        <h2>Click on the radio button next to the desired query</h2>

        <h1>Query without inputs  <button type ="submit">Query</button></h1>

        <p>Choose one of the following query (No input needed) and click query. (Refresh to remove Radio click under)</p>

        <input type="radio" name="givenQ" value=-1>

        <select name="table">
          <option value=0>1. Which student(s) is not a member of any team?</option>
          <option value=1>2. For each team, list its members.</option>
          <option value=2>3. Who was not present in the demo of a team?</option>
          <option value=3>4. List the teams which that have < 4 members.</option>
          <option value=4>7. For each team that is not complete (< 4 members), list the TID and the capacity to increase. (That is, if a team has 1 member, the capacity to increase would be 3).</option>
          <option value=5>Display Students table</option>
          <option value=6>Display Members table</option>
          <option value=7>Display Demos table</option>
          <option value=8>Display Teams table</option>
          <option value=9>Display Projects table</option>
        </select>

      <br/><br/>

      <h1>Query with inputs <button type ="submit">Query</button></h1>

      <p>Choose one of the following query (input needed) and click query to run it after text input.</p>

      <div>
        <input type="radio" name="givenQ" value=0>5. Given a TID, list the names of the members.<br>
        <label>Team id (Ex: 200):</label><input type="text" name ="tid"/>
      </div>

      <div>
        <input type="radio" name="givenQ" value=1>6. Given a date, list all the teams that have demos on that day.<br>
        <label>Date (Ex: 2018-01-17):</label><input type="text" name ="date"/>
      </div>

      <div>
        <input type="radio" name="givenQ" value=2>8. Given a student Name OR ID, find his/her team ID.<br>
        <label>Student name(Ex: Pooh de Verson):</label><input type="text" name ="name8"/><br/><label>or student id (Ex: 100):</label><input type ="text" name ="sid8"/>
      </div>

      <div>
        <input type="radio" name="givenQ" value=3>9. Given a student Name OR ID, find the names and SID of his/her teammates.<br>
        <label>Student name(Ex: Pooh de Verson):</label><input type="text" name ="name9"/><br/><label>or student id (Ex: 100):</label><input type ="text" name ="sid9"/>
      </div>
    </form>
  </body>
</html>
