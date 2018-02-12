-- 1)
SELECT sid, name FROM students
WHERE sid IN
(SELECT sid FROM members
    WHERE members.tid NOT IN (SELECT tid FROM teams)
);

-- 2)
SELECT teams.tid, students.sid, name FROM members
JOIN students ON students.sid = members.sid
JOIN teams ON members.tid = teams.tid
ORDER BY teams.tid;
