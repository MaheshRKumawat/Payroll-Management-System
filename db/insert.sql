\c payroll

Alter Table department drop constraint department_mgr_id_fkey;

INSERT INTO DEPARTMENT VALUES(1, 'Marketing Department',3,'2015-10-17', 32561.000, 2);
INSERT INTO DEPARTMENT VALUES(2, 'Operations Department',9,'2009-12-01', 36321.000, 2);
INSERT INTO DEPARTMENT VALUES(3, 'Finance Department',2,'2008-10-15', 27168.000, 2);
INSERT INTO DEPARTMENT VALUES(4, 'Sales Department',1,'2016-09-13', 23747.000, 2);
INSERT INTO DEPARTMENT VALUES(5, 'Human Resource Department',5,'2005-10-19', 23533.000, 2);
INSERT INTO DEPARTMENT VALUES(6, 'Purchase Department',7,'2015-09-18', 34356.000, 2);

INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Monin','h','Virk','uma@hotmail.com','9781322868','1994-09-23','2020-08-12','M',1,'225Godavari,Jekegram');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Aarif','k','Kapadia','kapadia@gmail.com','9176386378','1984-05-30','2015-09-18','M',2,'Houston,tx stone450');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Julie','Sharaf','u','sharf@gmail.com','9398856983','1980-06-14','2012-09-25','F',3,'65, Neerendra Heights, Neela Chowk');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Prabhat','s','Sani','sani@gmail.com','6317927970','1988-03-12','2005-10-19','M',4,'34, Deccan Gymkhana, Pondicherry');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Hema','A','Kapur','kapur@gmail.com','6199025439','1985-11-15','2006-05-16','F',5,'14, Deepesh Society, Samir Chowk');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Meghana',NULL,'Persad','persad@gmail.com','6389474908','2001-04-23','2021-12-11','F',6,'49, Ishat Nagar, Pilani');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Naval','l','Soman','soman@gmail.com','9453757869','1991-11-14','2016-11-09','M',1,'93, Sharad Society,JuhiPur');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Jiya',NULL,'Sampath','sampath@gmail.com','9836732876','1992-12-15','2019-09-10','F',2,'97, Dadar,Mumbai');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Mohanlal','v','Srinivas','srinij@gmail.com','7925782582','1999-02-19','2021-02-05','M',3,'71, BinoyaGarh,Kolkata');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Bahadur','p','Raval','raval@gmail.com','9732586399','1986-09-15','2018-09-17','M',4,'23, Yeshwanthpur,bengaluru');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Jasmin',NULL,'Bhat','bhat@gmail.com','6364758879','1979-07-06','2008-10-15','F',5,'36, CharandeepGarh,Kolkata');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Qabeel','l','Mathew','meth@gmail.com','9764321987','1986-03-13','2009-05-19','M',6,'89, KiranSociety,VirarAhmedabad');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('John','a','cena','heisjohncena@gmail.com','9998899988','1988-08-08','2010-01-01','M',1,'450 Stone, Houston,TX');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('James','E','Borg','jamesborg@gmail.com','888665555','1981-01-01','2009-02-01','M',2,'731 Fondren,Houston,TX');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('John','','Smith','johnsmith@gmail.com','9997799977','1982-02-02','2008-03-01','M',3,'638 voss,Houston,TX');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Franklin','T','Wong','franwong@gmail.com','333445555','1983-12-08','2011-04-02','M',4,'3321 Castle,Spring,Tx');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Alicia','J','Zelaya','aliciazels@gmail.com','999887777','1983-01-19','2011-03-02','F',4,'3321 Castle,Spring,Tx');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Jennifer','','Wallace','jenniferwallace@gmail.com','987654321','1984-06-20','2010-03-15','F',5,'291 Berry, Bellaire,Tx');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Ramesh','K','Narayan','rameshnarayan@gmail.com','666884444','1980-09-15','2009-03-04','M',6,'975 Fire Oak, Humble, TX');
INSERT INTO EMPLOYEE (First_Name, Middle_Name, Last_Name, Email, Phone_Number, Emp_DOB, Emp_DOJ, Gender, D_ID, Emp_Address) VALUES('Ahmed','V','Jabbar','ahmedjabbar@gmail.com','987987987','1979-03-29','2008-05-28','M',3,'980 Dallas, Houston,TX');

INSERT INTO DEPT_LOCATIONS VALUES(1, 'bengaluru');
INSERT INTO DEPT_LOCATIONS VALUES(2,'houston');
INSERT INTO DEPT_LOCATIONS VALUES(3,'rajkot');
INSERT INTO DEPT_LOCATIONS VALUES(4,'nasik');
INSERT INTO DEPT_LOCATIONS VALUES(5,'stafford');
INSERT INTO DEPT_LOCATIONS VALUES(6,'mumbai');

INSERT INTO PROJECT (Dept_ID, P_Name, P_Desc, P_Incremental_Sal) VALUES(1,'Obscure Steamy','The Prometheus monitoring system and time series',25000.00);
INSERT INTO PROJECT (Dept_ID, P_Name, P_Desc, P_Incremental_Sal) VALUES(1,'Blue Steamy','The time series',35000.00);
INSERT INTO PROJECT (Dept_ID, P_Name, P_Desc, P_Incremental_Sal) VALUES(2,'Blue Moose','The plugin-driven server agent for collecting & reporting metrics',30000.00);
INSERT INTO PROJECT (Dept_ID, P_Name, P_Desc, P_Incremental_Sal) VALUES(2,'Green Moose','The driver agent for collecting & reporting metrics',20000.00);
INSERT INTO PROJECT (Dept_ID, P_Name, P_Desc, P_Incremental_Sal) VALUES(3,'Project X','Daemon to ban hosts that cause multiple authentication errors',35000.00);
INSERT INTO PROJECT (Dept_ID, P_Name, P_Desc, P_Incremental_Sal) VALUES(3,'Project Y','Doraemon to ban hosts that cause multiple',39000.00);
INSERT INTO PROJECT (Dept_ID, P_Name, P_Desc, P_Incremental_Sal) VALUES(4,'Epsilon Hollow','Monitoring, visualisation & management for Docker & Kubernetes',39000.00);
INSERT INTO PROJECT (Dept_ID, P_Name, P_Desc, P_Incremental_Sal) VALUES(5,'Olive Moon','Continuous Profiling Platform! Debug performance issues down to a single line of code',45000.00);
INSERT INTO PROJECT (Dept_ID, P_Name, P_Desc, P_Incremental_Sal) VALUES(6,'Everyday Street','Puppeteer example scripts for running Headless Chrome from Node',29000.00);

INSERT INTO WORKS_ON VALUES(1, 1, 32.5);
INSERT INTO WORKS_ON VALUES(2, 2, 18.6);
INSERT INTO WORKS_ON VALUES(3, 3, 22.5);
INSERT INTO WORKS_ON VALUES(4, 4, 19.8);
INSERT INTO WORKS_ON VALUES(5, 5, 9.8);
INSERT INTO WORKS_ON VALUES(1, 2, 12.9);
INSERT INTO WORKS_ON VALUES(6, 3, 12.5);
INSERT INTO WORKS_ON VALUES(7, 1, 15.8);
INSERT INTO WORKS_ON VALUES(8, 3, 11.4);
INSERT INTO WORKS_ON VALUES(9, 5, 16.2);
INSERT INTO WORKS_ON VALUES(10, 7, 16.9);
INSERT INTO WORKS_ON VALUES(11, 8, 14.4);
INSERT INTO WORKS_ON VALUES(12, 6, 13.9);
INSERT INTO WORKS_ON VALUES(11, 2, 19.4);
INSERT INTO WORKS_ON VALUES(13, 8, 12.7);
INSERT INTO WORKS_ON VALUES(14, 1, 15.1);
INSERT INTO WORKS_ON VALUES(15, 7, 13.8);
INSERT INTO WORKS_ON VALUES(16, 2, 11.3);
INSERT INTO WORKS_ON VALUES(17, 3, 12.9);
INSERT INTO WORKS_ON VALUES(18, 4, 15.2);
INSERT INTO WORKS_ON VALUES(19, 8, 18.5);
INSERT INTO WORKS_ON VALUES(14, 5, 19.7);
INSERT INTO WORKS_ON VALUES(20, 2, 14.6);
INSERT INTO WORKS_ON VALUES(8, 1, 11.9);
INSERT INTO WORKS_ON VALUES(5, 7, 16.3);

INSERT INTO DEPENDENTS VALUES(3,'shalini','M','1994-09-23','wife');
INSERT INTO DEPENDENTS VALUES(2,'rohit','F','1988-03-12','husband');
INSERT INTO DEPENDENTS VALUES(6,'rekha','M','1992-02-15','wife');
INSERT INTO DEPENDENTS VALUES(4,'suresh','M','2001-04-23','parent');
INSERT INTO DEPENDENTS VALUES(9,'Shailaja','M','1984-05-30','wife');
INSERT INTO DEPENDENTS VALUES(11,'prathik','F','1986-03-13','husband');
INSERT INTO DEPENDENTS VALUES(12,'megha','M','1988-08-08','wife');
INSERT INTO DEPENDENTS VALUES(19,'ranga','F','1980-09-15','husband');
INSERT INTO DEPENDENTS VALUES(15,'sharin','f','1983-01-19','wife');
INSERT INTO DEPENDENTS VALUES(17,'rekha','M','1982-02-02','husband');
INSERT INTO DEPENDENTS VALUES(18,'mallika','f','1979-03-29','wife');
INSERT INTO DEPENDENTS VALUES(13,'veena','M','1984-09-23','husband');

INSERT INTO PAY_GRADE VALUES(1, 32561.00, 1800.00, 1500.00, 1000.00, 1900.00);
INSERT INTO PAY_GRADE VALUES(2, 36321.00, 2800.00, 1300.00, 1200.00, 1800.00);
INSERT INTO PAY_GRADE VALUES(3, 27168.00, 1800.00, 1400.00, 1300.00, 1000.00);
INSERT INTO PAY_GRADE VALUES(4, 23747.00, 1300.00, 1500.00, 1000.00, 1200.00);
INSERT INTO PAY_GRADE VALUES(5, 23533.00, 1100.00, 1700.00, 1200.00, 1500.00);
INSERT INTO PAY_GRADE VALUES(6, 34356.00, 1200.00, 1100.00, 1000.00, 1900.00);

Alter Table department add constraint department_mgr_id_fkey FOREIGN KEY (Mgr_ID) REFERENCES  EMPLOYEE(Emp_ID);