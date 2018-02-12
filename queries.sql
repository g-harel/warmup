-- 1)
SELECT sid,
       name
FROM   students
WHERE  sid IN (SELECT sid
               FROM   members
               WHERE  members.tid NOT IN (SELECT tid
                                          FROM   teams));

-- 2)
SELECT teams.tid,
       Group_concat(students.name SEPARATOR ', ')
FROM   members
       JOIN students
         ON students.sid = members.sid
       JOIN teams
         ON members.tid = teams.tid
GROUP BY teams.tid;

-- 3)
SELECT sid,
       name
FROM   students
WHERE  sid NOT IN (SELECT sid
                            FROM   demos);

-- 4)
SELECT tid,
       leaderId
FROM   teams
WHERE noOfMembers < 4;

-- 5)
SELECT students.name
FROM   members
       JOIN students
         ON students.sid = members.sid
WHERE  members.tid = 202;

-- 6)
SELECT * FROM teams JOIN demos WHERE demos.datetime = "2018-02-06 07:32:56" 

-- 7)
SELECT tid, 4-noOfMembers FROM teams WHERE noOfMembers < 4 
