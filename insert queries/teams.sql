CREATE TABLE teams (
    `tid`         INT     NOT NULL,
    `leaderId`    INT     NOT NULL,
    `noOfMembers` TINYINT NOT NULL,
    --
    PRIMARY KEY (`tid`),
    FOREIGN KEY (`leaderId`) REFERENCES students(`sid`)
);

INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (200, 100, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (201, 103, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (202, 106, 4);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (203, 110, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (204, 113, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (205, 116, 4);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (206, 120, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (207, 123, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (208, 126, 4);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (209, 130, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (210, 133, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (211, 136, 4);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (212, 140, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (213, 143, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (214, 146, 4);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (215, 150, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (216, 153, 3);
INSERT INTO teams (`tid`, `leaderId`, `noOfMembers`) VALUES (217, 156, 4);
