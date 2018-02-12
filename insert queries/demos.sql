CREATE TABLE demos (
    `sid`   INT     NOT NULL,
    `tid`   INT     NOT NULL,
    `date`  DATE    NOT NULL,
    `time`  TIME    NOT NULL,
    `grade` CHAR(1) NOT NULL,
    --
    PRIMARY KEY (`sid`, `tid`),
    FOREIGN KEY (`sid`) REFERENCES students(`sid`),
    FOREIGN KEY (`tid`) REFERENCES teams(`tid`)
);

INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (100, 200, '2018-01-11', '12:00:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (101, 200, '2018-01-11', '12:00:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (102, 200, '2018-01-11', '12:00:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (103, 201, '2018-01-11', '12:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (104, 201, '2018-01-11', '12:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (105, 201, '2018-01-11', '12:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (106, 202, '2018-01-11', '12:30:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (107, 202, '2018-01-11', '12:30:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (108, 202, '2018-01-11', '12:30:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (109, 202, '2018-01-11', '12:30:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (110, 203, '2018-01-11', '12:45:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (111, 203, '2018-01-11', '12:45:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (112, 203, '2018-01-11', '12:45:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (113, 204, '2018-01-11', '13:00:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (114, 204, '2018-01-11', '13:00:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (115, 204, '2018-01-11', '13:00:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (116, 205, '2018-01-11', '13:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (117, 205, '2018-01-11', '13:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (118, 205, '2018-01-11', '13:15:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (119, 205, '2018-01-11', '13:15:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (120, 206, '2018-01-11', '13:30:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (121, 206, '2018-01-11', '13:30:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (122, 206, '2018-01-11', '13:30:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (123, 207, '2018-01-11', '13:45:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (124, 207, '2018-01-11', '13:45:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (125, 207, '2018-01-11', '13:45:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (126, 208, '2018-01-11', '14:00:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (127, 208, '2018-01-11', '14:00:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (128, 208, '2018-01-11', '14:00:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (129, 208, '2018-01-11', '14:00:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (130, 209, '2018-01-12', '12:00:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (131, 209, '2018-01-12', '12:00:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (132, 209, '2018-01-12', '12:00:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (133, 210, '2018-01-12', '12:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (134, 210, '2018-01-12', '12:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (135, 210, '2018-01-12', '12:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (136, 211, '2018-01-12', '12:30:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (137, 211, '2018-01-12', '12:30:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (138, 211, '2018-01-12', '12:30:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (139, 211, '2018-01-12', '12:30:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (140, 212, '2018-01-12', '12:45:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (141, 212, '2018-01-12', '12:45:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (142, 212, '2018-01-12', '12:45:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (143, 213, '2018-01-12', '13:00:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (144, 213, '2018-01-12', '13:00:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (145, 213, '2018-01-12', '13:00:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (146, 214, '2018-01-12', '13:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (147, 214, '2018-01-12', '13:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (148, 214, '2018-01-12', '13:15:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (149, 214, '2018-01-12', '13:15:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (150, 215, '2018-01-12', '13:30:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (151, 215, '2018-01-12', '13:30:00', 'A');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (152, 215, '2018-01-12', '13:30:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (153, 216, '2018-01-12', '13:45:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (154, 216, '2018-01-12', '13:45:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (155, 216, '2018-01-12', '13:45:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (156, 217, '2018-01-12', '14:00:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (157, 217, '2018-01-12', '14:00:00', 'C');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (158, 217, '2018-01-12', '14:00:00', 'B');
INSERT INTO demos (`sid`, `tid`, `date`, `time`, `grade`) VALUES (159, 217, '2018-01-12', '14:00:00', 'B');
