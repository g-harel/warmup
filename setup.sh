#!/bin/sh

# create/clear file
echo '' > schema.sql

# drop old tables
cat drop.sql >> schema.sql

# append in order
cat insert\ queries/students.sql >> schema.sql
cat insert\ queries/teams.sql >> schema.sql
cat insert\ queries/projects.sql >> schema.sql
cat insert\ queries/members.sql >> schema.sql
cat insert\ queries/demos.sql >> schema.sql