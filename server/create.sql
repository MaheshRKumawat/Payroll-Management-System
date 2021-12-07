drop database payroll;
create database payroll;

\c payroll

CREATE TABLE EMPLOYEE
(	Emp_ID SERIAL,    
    First_Name VARCHAR(255) NOT NULL,
	Middle_Name VARCHAR(255) NULL, 
	Last_Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone_Number VARCHAR(10) NOT NULL,
	Emp_DOB DATE NOT NULL,
    Emp_DOJ DATE NOT NULL,
	Gender CHAR NOT NULL,
	D_ID INT NOT NULL,
    Emp_Address VARCHAR NOT NULL,
	PRIMARY KEY (Emp_ID));

	
CREATE TABLE DEPARTMENT
(	Dept_ID INT NOT NULL,
    Dept_Name VARCHAR(255) NOT NULL,
	Mgr_ID INT NOT NULL,
	Mgr_Start_Date DATE NOT NULL,
    Base_Sal DECIMAL(10, 3) NOT NULL,
    Number_of_Emp INT NOT NULL,
	PRIMARY KEY (Dept_ID),
	UNIQUE (Dept_Name),
	FOREIGN KEY (Mgr_ID) REFERENCES  EMPLOYEE(Emp_ID) ON UPDATE CASCADE ON DELETE CASCADE);
	

CREATE TABLE DEPT_LOCATIONS
(	Dept_ID INT NOT NULL, 
	Dept_Location VARCHAR(255) NOT NULL,
	PRIMARY KEY (Dept_ID),
	FOREIGN KEY (Dept_ID) REFERENCES  DEPARTMENT(Dept_ID) ON UPDATE CASCADE ON DELETE CASCADE);


CREATE TABLE PROJECT
(	P_ID SERIAL,
    Dept_ID INT NOT NULL,
    P_Name VARCHAR(255) NOT NULL,
    P_Desc VARCHAR(255),
    P_Incremental_Sal DECIMAL(10, 2) NOT NULL,
	PRIMARY KEY (P_ID),
	UNIQUE(P_Name),
	FOREIGN KEY (Dept_ID) REFERENCES DEPARTMENT(Dept_ID) ON UPDATE CASCADE ON DELETE CASCADE);


CREATE TABLE WORKS_ON
(	Emp_ID INT NOT NULL,
	P_ID INT NOT NULL, 
	Work_Hours DECIMAL(6,2) NOT NULL,
	PRIMARY KEY (Emp_ID, P_ID),
	FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(P_ID) REFERENCES PROJECT(P_ID) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE DEPENDENTS
(	Emp_ID INT NOT NULL,
	Dependent_Name VARCHAR(255) NOT NULL,
	Gender CHAR,
	Bdate DATE,
	Relationship VARCHAR(8),
	PRIMARY KEY (Emp_ID, Dependent_Name),
	FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE PAY_ROLL
(	Emp_ID INT NOT NULL,
    Sal_Per_Month DECIMAL(10, 2) NOT NULL,
	Sal_Per_Annum DECIMAL(10, 2) NOT NULL,
	Transaction_ID VARCHAR(10) NOT NULL,
	PRIMARY KEY (Emp_ID),
	FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE PAY_GRADE
(	Dept_ID INT NOT NULL,
	Base_Sal DECIMAL(10, 2) NOT NULL,
	Grade_TA DECIMAL(10, 2),
	Grade_DA DECIMAL(10, 2),
	Grade_PF DECIMAL(10, 2),
    Grade_MA DECIMAL(10, 2),
	PRIMARY KEY (Dept_ID),
	FOREIGN KEY (Dept_ID) REFERENCES DEPARTMENT(Dept_ID) ON UPDATE CASCADE ON DELETE CASCADE);

Alter Table EMPLOYEE Add Constraint FKEY_Dno FOREIGN KEY (D_ID) REFERENCES DEPARTMENT(Dept_ID);