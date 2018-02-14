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
SELECT *
FROM   teams
       JOIN demos
         ON teams.leaderId = demos.sid
WHERE  demos.date = "2018-01-11";

-- 7)
SELECT tid,
       4 - noOfMembers as capacity
FROM   teams
WHERE  noOfMembers < 4;

-- 8)
SELECT members.tid
FROM students
JOIN members ON students.sid = members.sid
WHERE students.name = "Pooh de Verson" OR students.sid = "100";

-- 9)
SELECT members.sid, students.name
  FROM members JOIN students
  ON students.sid = members.sid
  WHERE tid = (SELECT members.tid
                FROM students JOIN members ON students.sid = members.sid
                WHERE students.name = '' OR students.sid = '100');

