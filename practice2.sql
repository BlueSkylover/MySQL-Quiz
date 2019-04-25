# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name


select companyName,employee.name
     from company,employee
     where company.cid=employee.cid
     and employee.salary=(select max(salary) 
     												from employee e where e.cid=company.cid );
#result     												
#+-------------+--------------+
#| companyName | name         |
#+-------------+--------------+
#| baidu       | xiaoming     |
#| alibaba     | xiaohong     |
#| tengxun     | xiaozhi      |
#+-------------+--------------+