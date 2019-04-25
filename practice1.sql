# 1.创建数据库employee_db

# 2.在数据库employee_db中创建table：`Employee`

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中

# 4.在数据库employee_db中创建table：`Company`

# 5.将`company-data.csv`文件中的数据导入Company数据表中

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息

# ps:本练习中只需要将6的结果复制到`result.txt`文件中


create database employee_db

ues employee_db
create table employee(
      id int,
      name varchar(100),
      age int,
      gender varchar(10),
      cid int,
      salary int);

load data infiel  "F:/Node/week6/MySQL-Quiz-2019-3-14-7-49-4-960-master/employee-data.csv"   
			 into table employee
			 fields terminated by ','
			 lines terminated by '\r\n';  

create table company(
      cid int,
      companyName varchar(30),
      employeeNumber int);
      
load data infiel  "F:/Node/week6/MySQL-Quiz-2019-3-14-7-49-4-960-master/company-data.csv"   
			 into table company
			 fields terminated by ','
			 lines terminated by '\r\n';


select * from employee
	where name like '%n%' and salary>6000
	
#result 
#+------+----------+------+--------+------+--------+
#| id   | name     | age  | gender | cid  | salary |
#+------+----------+------+--------+------+--------+
#|    1 | xiaohong |   19 | female |    1 |   7000 |
#+------+----------+------+--------+------+--------+
#1 row in set (0.00 sec)