\c payroll

create view temp as select emp_id, p_id, p_incremental_sal from project natural join works_on;

select * from temp;

create view temp1 as select emp_id, sum(p_incremental_sal) from temp group by emp_id;

select * from temp1;

create view temp2 as select emp_id, d_id as dept_id, sum from temp1 natural join employee;

select * from temp2;

create view temp3 as select emp_id, dept_id, base_sal, sum as total_incremental_salary from temp2 natural join department;

select * from temp3;

create view temp4 as select emp_id, dept_id, total_incremental_salary + base_sal as total_sal from temp3;

select * from temp4;

create view temp5 as select emp_id, dept_id, total_sal+grade_ta+grade_da+grade_pf+grade_ma as total_sal_per_month from temp4 natural join pay_grade;

select * from temp5;

insert into pay_roll select emp_id, total_sal_per_month, total_sal_per_month*12 as total_sal_per_annum, upper(substr(md5(random()::text), 0, 11)) from temp5;

select * from pay_roll;