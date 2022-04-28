INSERT INTO  Division VALUES (001, 'A');
INSERT INTO  Division VALUES (002, 'B');
INSERT INTO  Division VALUES (003, 'C');
INSERT INTO  Division VALUES (004, 'D');
INSERT INTO  Division VALUES (005, 'E');

INSERT INTO  Department VALUES ('Administration', 50000,  001);
INSERT INTO  Department VALUES ('Recruiting', 40000, 002);
INSERT INTO  Department VALUES ('Training', 20000, 003);
INSERT INTO  Department VALUES ('Onboarding', 10000, 004);
INSERT INTO  Department VALUES ('Disciplinary', 70000, 005);

INSERT INTO  Employee VALUES (11, 'John', 123, 'AA', 01 , 8975641, 001, 005 , null ,null ,123);
INSERT INTO  Employee VALUES (12, 'Stew', 124, 'BB', 02, 5897451, 002, 005, null,null ,124);
INSERT INTO  Employee VALUES (13, 'Ivan', 125, 'CC', 03, 9687553, 003, 005, null,null ,125);
INSERT INTO  Employee VALUES (14, 'Noah', 126, 'DD', 04, 3568975, 004, 005, null, null,126);
INSERT INTO  Employee VALUES (15, 'Aiden', 127, 'EE', 05, 6895476,null ,null ,'Administration','Disciplinary',127);
INSERT INTO  Employee VALUES (16, 'Evan', 126, 'DD', 01, 7584693,null , null, 'Recruiting', 'Disciplinary', 123);
INSERT INTO  Employee VALUES (17, 'Josh', 125, 'DD', 02, 2568974,null ,null, 'Training', 'Disciplinary', 124);
INSERT INTO  Employee VALUES (18, 'Josh', 125, 'DD', 03, 3568975,null ,null, 'Onboarding', 'Disciplinary', 125);

INSERT INTO  Project VALUES (123, 100000, '2022-04-27' , '2023-04-28', 'Administration',11 );
INSERT INTO  Project VALUES (124, 200000, '2022-04-17' , '2023-04-18', 'Recruiting', 12);
INSERT INTO  Project VALUES (125, 300000, '2022-04-07' , '2023-04-08', 'Training', 13);
INSERT INTO  Project VALUES (126, 400000, '2022-03-27' , '2023-03-28', 'Onboarding', 14);
INSERT INTO  Project VALUES (127, 90000, '2022-03-17' , '2023-03-18', 'Disciplinary', 15);

INSERT INTO  Project_Hist VALUES (11, 15 , 'Evalution' , 11, 123);
INSERT INTO  Project_Hist VALUES (12, 20 , 'Trainer' , 12, 124);
INSERT INTO  Project_Hist VALUES (13, 45, 'Senior' , 16, 124);
INSERT INTO  Project_Hist VALUES (14, 25, 'Trainer' , 13, 125);
INSERT INTO  Project_Hist VALUES (15, 90, 'Recruiting' , 14, 126);

INSERT INTO  Rooms VALUES (1, 12,  'Administration', 01, 01);
INSERT INTO  Rooms VALUES (2, 23, 'Recruiting', 02, 02);
INSERT INTO  Rooms VALUES (3, 32, 'Training', 03, 03);
INSERT INTO  Rooms VALUES (4, 24 , 'Onboarding', 04, 04);
INSERT INTO  Rooms VALUES (5, 56 , 'Disciplinary', 05, 05);

INSERT INTO  Building VALUES (01, 'A' , 2017, 1020000);
INSERT INTO  Building VALUES (02, 'B' , 2015, 500000);
INSERT INTO  Building VALUES (03, 'C' , 2000, 150000);
INSERT INTO  Building VALUES (04, 'D' , 2010, 300000);
INSERT INTO  Building VALUES (05, 'E' , 2005, 200000);

INSERT INTO  Office VALUES (01, 1200);
INSERT INTO  Office VALUES (02, 1500);
INSERT INTO  Office VALUES (03, 1000);
INSERT INTO  Office VALUES (04, 1300);
INSERT INTO  Office VALUES (05, 1400);



INSERT INTO  Phone VALUES (7584693, 01);
INSERT INTO  Phone VALUES (5897451, 02);
INSERT INTO  Phone VALUES (9687553, 03);
INSERT INTO  Phone VALUES (8975641, 04);
INSERT INTO  Phone VALUES (4568792, 05);
INSERT INTO  Phone VALUES (6895476, 01);
INSERT INTO  Phone VALUES (2568974, 02);
INSERT INTO  Phone VALUES (3568975, 04);

INSERT INTO  Records VALUES (11, 'IT', '2018-06-11', 60000);
INSERT INTO  Records VALUES (12, 'Devloper', '2019-04-15', 65000);
INSERT INTO  Records VALUES (13, 'Head', '2015-04-19', 80000);
INSERT INTO  Records VALUES (14, 'Associate', '2021-04-15', 40000);
INSERT INTO  Records VALUES (15, 'Senior', '2019-06-11', 50000);
INSERT INTO  Records VALUES (16, 'Associate', '2020-04-15', 45000);
INSERT INTO  Records VALUES (17, 'IT', '2015-04-19', 70000);
INSERT INTO  Records VALUES (18, 'Developer', '2015-04-15', 75000);
