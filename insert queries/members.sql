CREATE TABLE members (
    `sid`        INT         NOT NULL,
    `tid`        INT         NOT NULL,
    `dateJoined` DATE        NOT NULL,
    `role`       VARCHAR(60) NOT NULL,
    --
    PRIMARY KEY (`sid`, tid),
    FOREIGN KEY (`sid`) REFERENCES students(`sid`),
    FOREIGN KEY (`tid`) REFERENCES teams(`tid`)
);

INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (100, 200, '2018-02-17', 'nulla');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (101, 200, '2018-02-12', 'sapien in');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (102, 200, '2018-01-14', 'nonummy');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (103, 201, '2018-01-03', 'eget rutrum');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (104, 201, '2018-01-09', 'ridiculus');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (105, 201, '2018-01-08', 'maecenas');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (106, 202, '2018-02-25', 'cubilia');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (107, 202, '2018-01-20', 'rhoncus dui');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (108, 202, '2018-02-28', 'aliquet pulvinar');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (109, 202, '2018-02-15', 'rutrum neque');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (110, 203, '2018-02-20', 'rutrum');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (111, 203, '2018-02-15', 'pellentesque');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (112, 203, '2018-01-22', 'turpis');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (113, 204, '2018-01-23', 'aliquet');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (114, 204, '2018-02-24', 'platea');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (115, 204, '2018-02-28', 'tellus in');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (116, 205, '2018-01-29', 'vestibulum proin');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (117, 205, '2018-01-17', 'neque sapien');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (118, 205, '2018-01-17', 'sed nisl');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (119, 205, '2018-02-23', 'mauris ullamcorper');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (120, 206, '2018-02-15', 'commodo');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (121, 206, '2018-02-22', 'curae');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (122, 206, '2018-01-21', 'sed');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (123, 207, '2018-02-06', 'eget nunc');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (124, 207, '2018-01-16', 'nullam sit');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (125, 207, '2018-01-30', 'viverra');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (126, 208, '2018-02-08', 'aliquam');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (127, 208, '2018-02-09', 'ut nulla');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (128, 208, '2018-01-19', 'sit amet');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (129, 208, '2018-02-02', 'porta');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (130, 209, '2018-02-01', 'aenean fermentum');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (131, 209, '2018-01-19', 'ut');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (132, 209, '2018-02-21', 'ipsum primis');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (133, 210, '2018-02-07', 'luctus et');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (134, 210, '2018-01-12', 'rutrum');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (135, 210, '2018-02-08', 'sapien');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (136, 211, '2018-01-23', 'donec vitae');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (137, 211, '2018-02-24', 'nascetur');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (138, 211, '2018-01-27', 'in faucibus');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (139, 211, '2018-01-29', 'vel');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (140, 212, '2018-01-08', 'quam');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (141, 212, '2018-02-17', 'nulla');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (142, 212, '2018-02-18', 'odio justo');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (143, 213, '2018-02-18', 'dapibus');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (144, 213, '2018-01-06', 'pretium');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (145, 213, '2018-02-07', 'purus');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (146, 214, '2018-01-05', 'sapien placerat');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (147, 214, '2018-01-30', 'lacus');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (148, 214, '2018-01-29', 'cras pellentesque');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (149, 214, '2018-02-18', 'tincidunt ante');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (150, 215, '2018-02-13', 'orci');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (151, 215, '2018-01-25', 'eu');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (152, 215, '2018-01-20', 'pretium');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (153, 216, '2018-01-08', 'potenti in');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (154, 216, '2018-01-19', 'aliquam quis');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (155, 216, '2018-01-07', 'ipsum primis');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (156, 217, '2018-01-05', 'mi');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (157, 217, '2018-02-16', 'blandit ultrices');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (158, 217, '2018-02-20', 'amet erat');
INSERT INTO members (`sid`, `tid`, `dateJoined`, `role`) VALUES (159, 217, '2018-02-17', 'metus arcu');
