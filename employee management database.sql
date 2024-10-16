create database excelr;
use excelr;
CREATE TABLE emp
(
 empno decimal(4,0) NOT NULL,
 ename varchar(10) default NULL,
 job varchar(9) default NULL,
 mgr decimal(4,0) default NULL,
 hiredate date default NULL,
 sal decimal(7,2) default NULL,
 comm decimal(7,2) default NULL,
 deptno decimal(2,0) default NULL
);
CREATE TABLE dept (
 deptno decimal(2,0) default NULL,
 dname varchar(14) default NULL,
 loc varchar(13) default NULL
);

INSERT INTO emp VALUES 
('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES 
('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES 
('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES 
('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES 
('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES 
('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES 
('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES 
('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES 
('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES 
('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES 
('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES 
('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES 
('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');

/* waqtd name of the emp*/
select* from emp;
select ename from emp;

/*waqtd salary of the employ */
select* from emp;
select sal from emp;

/*waqtd name and designation of an emp*/
select*from emp;
select ename,job from emp;

/* waqtd name and joining date and comission of employee*/
select* from emp;
select ename,hiredate,comm from emp;

/*waqtd dname of employee*/
select* from dept;
select dname from dept;

/*waqtd details of department table */
select* from dept;

/*waqtd name and annual salary of employee*/
select* from emp;
select ename,sal*12 from emp;

/*waqtd name of employee along with 10% hike in a salary */
select ename,sal+(sal*10/100) from emp;

/* waqtd name of employee along with 20% decrement in salary*/
select ename,sal-(sal*20/100) from emp;

/*waqtd detail of employee along with 50% hile in salary*/
select*,ename,sal+(sal*50/100)"salary hike" from emp;

/*waqtd max salary of emp*/
select max(sal)
from emp;

/*waqtd min sal of salesman*/
select min(sal)
from emp
where job='salesman';

/*waqtd total sal given to manager*/
select sum(sal)
from emp 
where job='manager';

/*waqtd avg sal given to deptno30*/
select avg(sal)
from emp 
where deptno=30;

/*waqtd no of emp working as analyst*/
select count(job)
from emp 
where job='analyst';

/*waqtd to check if ename is palindrome or not*/
select ename
from emp
where ename=reverse(ename);

/*waqtd even no of emp no*/
select empno
from emp 
where mod(empno,2)=0;  

 /*waqtd name of employee if employee is working in deptno 10 20 30 */
select ename,deptno
from emp 
where deptno in(10,20,30);
-- where deptno=20 or deptno=30 or deptno=10;

/*waqtd name of emp if emp is getting salary of rs 800 or 950 or 5000 or 3000*/
select ename 
from emp 
where sal in(800,950,5000,3000);

/*waqtd name and job of emp if emp is not working in dept no 20 and 30*/
select ename,job,deptno
from emp 
where deptno not in (20,30);
-- where deptno!=20 and deptno<>30;

/*waqtd name of emp if emp is hiered during 1981*/
select ename
from emp 
where hiredate between '1981-01-01' and '1981-12-31';
-- where hiredate>='1981-01-01' and hiredate<='1981-12-31';

/*waqtd name and salary of an employee if employee is getting salary in the range of 5000 and 2850*/
select ename,sal
from emp 
where sal between 2850 and 5000;

/*
waqtd name of emp if emp is not hired during 1981 */
select ename 
from emp 
where hiredate not between '1981-01-01' and '1981-12-31';

/*waqtd name and sal of emp if emp is not getting salary*/
select ename,sal,sal+comm
from emp 
where sal+comm is null;

/* waqtd name and job of employee if employee does not have reporting manager*/
select ename,job
from emp 
where mgr is null;

/*waqtd name and sal of an employee who is getting salary */
select ename,sal
from emp 
where sal is not null;

/* waqtd nam,sal,comm of employee if employee if getting a salary but not comm*/
select ename,sal,comm
from emp 
where sal is not null and comm is null;

select ename 
from emp
where ename like'a%';

/*waqtd name of employee if employee if employee name starts with s */
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE 'S%';

/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAME ENDS WITH R*/
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE '%R';

/*WAQTD NAME EMPLOYEE IF EMPLOYEE NAME STARTS WITH M AND ENDS WITH N */
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE 'M%N';

/*WAQTD NAME OF EMP IF EMP NAME HAS CHARACTER A IN THEIR NAME */
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE '%A%';

/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE HAS EXACTLY 4 CHARA IN THEIR NAME */
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE '____';

/*WAQTD NAME OF EMPLOYEE IF EMPLOYEE NAMES 2ND CHARA STARTS WITH A*/
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE '_a%';

/*WAQTD IS EMP NAME 3RD CHARA STARTS WITH l*/
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE '__L%';

/* WAQTD IF EMP NAME LAST BUT ONE CHARA STARTS WITH E*/
SELECT ENAME 
FROM EMP 
WHERE ENAME LIKE '%E_';

 /*waqtd name of emplyee if employee is working in dptnp20*/
 select ename
 from emp
 where deptno=20;
 
 /*waqtd name and salary of an enployee if employee getting a salary more than 2500*/
 select ename,sal
 from emp
 where sal>2500;
 
 /* waqtd name and job of employee if emplyee is working as a salesmen*/
 select ename,job 
 from emp 
 where job='salesman';
 
 /*waqtd details of employee if employee is hired after 1981*/
 select*
 from emp 
 where hiredate>'1981-12-31';
 
 /*waqtd name and hiredate of employee if employee is hired before 1982*/
  select ename,hiredate
 from emp 
 where hiredate<'1982-01-01';
 
 /*waqtd details of employee if employee is getting annual salary more than 15000*/
  select*
 from emp 
 where sal*12<15000;
 
 /*waqtd name and salary of an employee along with 35%hike in a salary if employee is working as manager*/
 select ename,sal,sal+sal*35/100,job
 from emp
 where job='manager';
 
 /*waqtd name and salary of employee along with 500 rs penalty in salary if employee is working as president*/
 select ename,sal,sal-500
 from emp
 where job='president';
 
 /*waqtd name and job and deptno of employee if employee if working as manager 
and getting salary more than 2700*/

select ename,job,deptno
from emp
where job="manager" and sal>2700;


/*waqtd details of employee if employee is getting commission of rs 1400 and working in deptno 20 */
select*
from emp
where deptno=20 and comm=1400;

/*waqtd name of employee if employee is working in deptno 10 20 30 */
select ename
from emp 
where deptno=20 or deptno=30 or deptno=10;

/*waqtd name and job of employee if employee is working as analyst or clerk  */
select ename,job
from emp
where job="analyst" or job="clerk";

/*waqtd details of employee if employee is working as a analyst or
 a salesman or manager and working in deptno 20 or 30 and hired after
 1981 and before 1987*/
 
 select*
 from emp 
 where (job='analyst' or job='salesman' or job='manager')and (deptno=20 or deptno=30) and hiredate>'1981-12-31' and hiredate<'1987-01-01';
 
 /*waqtd name and job and salary of an employee if employee is working 
 in deptno 10 20 30 and getting annual salary more than 15000 and
 hiredate before 1982 and working as a salesman or analyst*/
 
 select ename,job,sal
 from emp 
 where (deptno=10 or deptno=20 or deptno=30 )and (sal*12>15000) and (hiredate<'1982-01-01')
 and (job='salesman' or job='analyst');
 
/*waqtd name of emp if emp is getting sal more than 2500*/
select ename 
from emp 
where sal>2500;
/*waqtd name of emp if emp is getting sal more than allen*/
select ename,sal 
from emp 
where sal>(select sal
          from emp 
          where ename='allen');
/*waqtd name and job of emp if emp is working 
in same designation as jones*/
select ename,job 
from emp 
where job=(select job
		   from emp 
           where ename='jones');
/*waqtd name and hiredate of emp if emp is hired before 
miller*/
select ename,hiredate 
from emp
where hiredate<(select hiredate
                from emp 
                where ename='miller');
                
/*waqtd name and sal of emp if emp working in deptno 20 
and getting sal more than blake*/
select ename,sal 
from emp 
where deptno=20 and sal>all(select sal 
                         from emp 
                         where ename='blake');
/*waqtd details of emp if emp is hired
 after 1981 and working
 in same dept as martin*/
 select*
 from emp 
 where hiredate>'1981-12-31' and deptno=(select deptno
                                      from emp 
                                      where ename='martin');

/*waqtd details of emp if emp is getting sal more than smith 
but less than king*/
select*
from emp 
where sal>all(select sal 
		   from emp 
           where ename='smith')and sal<all(select sal 
                                        from emp 
                                        where ename='king');
/*waqtd name, job hiredate of emp if emp is working as 
salesman and getting a sal more than turner but less than
allen and hired before allen*/
select ename,job,hiredate
from emp 
where job='salesman' and sal>(select sal 
                              from emp 
                              where ename='turner') 
				     and sal < (select sal 
                           from emp 
                           where ename='allen')
					and hiredate < (select hiredate
                                    from emp
                                    where ename='allen');
                                    
/* waqtd details of emp if emp working in same designation
as james and hired aftre jones but befoe king and getting 
sal more than scott and emp name has 5 chara*/
select*
from emp
where job=(select job
           from emp 
           where ename='james')
and hiredate>(select hiredate 
			  from emp 
              where ename='jones')
and hiredate<(select hiredate 
              from emp 
              where ename='king')
and sal>(select sal 
         from emp 
         where ename='scott')
and ename like '_____';

/*waqtd name of emp if emo is working in deptno 20*/
select ename 
from emp 
where deptno=20;
/*waqtd dname of allen*/
select dname 
from dept
where deptno=(select deptno 
              from emp 
              where ename='all_n');
/*-----or using joins----------*/
select ename,dname 
from emp inner join dept
on emp.deptno=dept.deptno
where ename='all_n';
/* watd location of miller*/
select loc
from dept 
where deptno in(select deptno
              from emp 
              where ename='miller');
/*---------or using joins-------------*/
select ename,loc
from emp inner join dept 
on emp.deptno=dept.deptno
where ename='miller';

/*waqtd name of emp if emp is working in a location new york*/
select ename 
from emp 
where deptno=(select deptno 
              from dept 
              where loc='new york');
/* waqtd details of emp if emp is working in dname
research or sales*/
select*
from emp 
where deptno in (select deptno 
			  from dept 
              where dname in ('research','sales'));
/*waqtd details of emp if emp is working as a manager or a salesman and getting a salary more than blake and working 
in a loaction new yorl or dallas or chicago .......(subquery : query inside another query)*/
select*
from emp;
select *
from emp 
where (job="manager" or job = "salesman" ) and sal>(select sal from emp where ename='blake')
 and deptno in (select deptno 
				from dept 
				where loc in ('new york','dallas','chicago'));
                
/*waqtd ename of emp if emp is hired after miller and working in dname research 
or sales and working in location dallas*/
select ename
from emp 
where hiredate>(select hiredate
            from emp
            where ename='miller')
and deptno=(select deptno 
               from dept
               where dname in ('research','sales'))
and deptno=(select deptno 
           from dept 
           where loc='dallas');
           
           
/* waqtd 3rd max salary of emp ... (nested subquery:- subquery written inside another subquery
													- we can nest upto 255 inner queries) */

select max(sal)
from emp
where sal<(select max(sal)
            from emp
            where sal<(select max(sal)
            from emp));
            
 /*waqtd 4rd max salary of emp*/
select max(sal)
from emp
where sal<(select max(sal)
            from emp
            where sal<(select max(sal)
                       from emp
			where sal<(select max(sal)
                        from emp)));
                        
/* waqtd 2nd max salary of emp*/
select max(sal)
from emp 
where sal<(select max(sal)
		from emp);
        
/*waqtd name of emp if emp getting second max sal */
select ename
from emp 
where sal=(select max(sal)
            from emp
            where sal<(select max(sal)
						from emp));
/*waqtd name of emp getting 13th max sal of emp*/
with ranked_emp as ( select ename,sal,
dense_rank() over(order by sal desc) as r1
from emp )
select ename,sal, r1
from ranked_emp
where r1=12;

/*waqtd allen's manager*/
select ename 
from emp
where empno=(select mgr 
             from emp 
             where ename='allen');

select ename
from emp 
where empno=(select mgr 
			from emp 
            where ename='jones');
 
 select ename 
 from emp 
 where empno=(select mgr
              from emp 
              where empno = (select mgr
							 from emp 
                             where ename='james'));

select ename
from emp 
where empno in(select mgr
             from emp 
             where empno in (select mgr 
                          from emp 
                          where ename='miller'));
                          
/*waqtd name of emp reporting to king */
select ename
from emp 
where mgr=(select empno
           from emp 
           where ename='king');
           
select ename 
from emp 
where mgr=(select empno
           from emp 
           where ename='scott');
/*waqtd name of employee if employee is getting salary more than all the manager*/
select ename
from emp 
where sal>(select max(sal)
           from emp 
           where job='manager');
/*or*/

select ename 
from emp 
where sal>all(select sal from emp where job='manager');

select ename 
from emp 
where sal>all(select sal from emp where job='clercks');

/*2)any : */

select ename
from emp 
where sal>any (select sal 
               from emp 
               where job='manager');

show index from emp;
create index evening 
on emp(empno,ename);

create unique index sql1
on emp(empno);

drop index sql1 on emp;
drop index evening on emp ;

/*
waqtd name and dname of emp */
select ename, dname 
from emp cross join dept;

/*waqtd name and location of employee*/
select ename,loc
from emp inner join dept 
on emp.deptno=dept.deptno;

/*waqtd ename,sal, job and dname of emp if emp is working in location newypork*/
select ename,sal,job,dname 
from emp inner join dept 
on emp.deptno=dept.deptno
where loc='new york';

/*waqtd details of emp and details of dept if emp working as analyst */
select*
from emp inner join dept 
on emp.deptno=dept.deptno
where job='analyst';

/*waqtd name and hiredate of emp if emp is hired afer 1980 and working in dname research or sales*/
select ename, hiredate
from emp inner join dept 
on emp.deptno=dept.deptno
where (hiredate>'1980-12-31') and (dname in ('research','sales'));

/*waqtd details of emp along with loc if emp is getting sal and emp name starts with m 
and working in deptno 10 20 and working in location chicago*/
select emp.*,loc
from emp inner join dept 
on emp.deptno=dept.deptno
where sal is not null and ename like 'm%' and emp.deptno in (20,30) and loc='chicago';

/*waqtd ename dname sal of emp if emp is hired after smith and working in loc
 new york or dallas and emp name had 4 chara */
select ename,dname,sal,emp.deptno
from emp inner join dept 
on emp.deptno=dept.deptno
where hiredate> all (select hiredate
				from emp 
                where ename='smith')
and loc in ('new york','dallas') and ename like '____';

/*waqtd emp name and manager name of emp */
select e1.ename, e1.sal,m1.ename,m1.sal
from emp e1 join emp m1
on e1.mgr=m1.empno;

/*waqtd emp name emp job manager name manager job of emp 
if emp is working as salesman*/
select e1.ename,e1.job,m1.ename,m1.job
from emp e1 join emp m1 
on e1.mgr=m1.empno
where e1.job='salesman';

/* waqtd ename emp job mgr name, mgr job if mgr is working as an anayst*/
select e1.ename,e1.job,m1.ename,m1.job
from emp e1 join emp m1 
on e1.mgr=m1.empno
where m1.job='analyst';

/*waqtd emp details and mgr details if emp getting salary more than mgr*/
select e1.*,m1.*
from emp e1 join emp m1
 on e1.mgr=m1.empno
 where e1.sal>m1.sal;
 
 /*waqtd emp name , emp sal , mgr name , mgr sal, mgr's mgr name, mgr's mgr sal*/
 select e1.ename,e1.sal,m1.ename,m1.sal,m2.ename,m2.sal
 from emp e1 join emp m1 join emp m2
 on e1.mgr=m1.empno and m1.mgr=m2.empno;
 
 /*waqtd emp name, emp dept name, mgr name, mgr dept name if emp and mgr 
 work in same location new york*/
select e1.ename, e2.dname, m1.ename,m2.dname,e2.loc,m2.loc
from emp e1 join emp m1 join dept e2 inner join dept m2
on e1.mgr=m1.empno and e1.deptno=m2.deptno
where e2.loc='new york' and m2.loc='new york';

/*waqtd no of emp working in each deptno*/
select count(*),deptno
from emp
group by deptno;

/*waqtd no of emp working in each dept no excet analyst*/
select count(*),deptno
from emp 
where job!='analyst'
group by deptno;

/*waqtd no of emp working in each job*/
select count(*),job
from emp 
group by job;

