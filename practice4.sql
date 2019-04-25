# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
select * from (
      select employee.*,avgsal from
      (select employee.*,companyName from employee left join company on employee.cid=company.cid) employee left join
      (select employee.cid,avg(salary) as avgsal from employee group by employee.cid) company on employee.cid=company.cid)EC where EC.salary>=EC.avgsal;

#result
#+------+----------+------+--------+------+--------+-------------+-----------+
#| id   | name     | age  | gender | cid  | salary | companyName | avgsal    |
#+------+----------+------+--------+------+--------+-------------+-----------+
#|    0 | xiaoming |   20 | male   |    0 |   6000 | baidu       | 5000.0000 |
#|    1 | xiaohong |   19 | female |    1 |   7000 | alibaba     | 6500.0000 |
#|    2 | xiaozhi  |   15 | male   |    2 |   8000 | tengxun     | 8000.0000 |
#+------+----------+------+--------+------+--------+-------------+-----------+
#3 rows in set (0.00 sec)