SELECT * from emp WHERE hiredate BETWEEN '1981-09-01'
AND '1981-12-31';

SELECT * from emp WHERE quarter(hiredate) 
in (quarter('1981-09-01'),quarter('1981-10-01'),
quarter('1981-11-01'),quarter('1981-12-01'))
order by deptno;