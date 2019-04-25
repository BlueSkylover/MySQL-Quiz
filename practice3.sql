#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary

 
select companyName,avg(salary) as avgSalary
			from employee join company on employee.cid =company.cid
      group by company.cid;
      
      
      
#+----------result---+-----------+
#| companyName | avgSalary |
#+-------------+-----------+
#| baidu       | 5000.0000 |
#| alibaba     | 6500.0000 |
#| tengxun     | 8000.0000 |
#+-------------+-----------+
#3 rows in set (0.37 sec)      