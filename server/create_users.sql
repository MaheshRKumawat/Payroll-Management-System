\c payroll

create user admin with password 'admin' createdb;

create user user1 with password 'user1' createdb;

create user user2 with password 'user2' createdb;

create user user3 with password 'user3' createdb;

create user user4 with password 'user4' createdb;

grant all privileges on all tables in schema public to admin;

grant all on employee, department to user1;

grant all on project, works_on to user2;

grant select on employee, department, project, works_on to user3;

grant update on employee, department, project, works_on to user4;