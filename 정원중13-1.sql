--10�� ����
--�̹����� �μ��� ���ϱ�
select * from emp where ename='�̹���';

select * from dept;

--Cross Join - 1:1 ����
select * from emp,dept;

--Equi Join
select * from emp,dept where emp.deptno = dept.deptno;

select ename,dname,d.deptno from emp e,dept d where e.deptno = d.deptno and e.ename='�̹���';

--Non-Equo Join
select * from salgrade;

--�������� �޿� ��� ���ϱ�
select e.ename, e.sal, s.grade �޿���� from emp e, salgrade s where e.sal between losal and hisal order by 3;

select e.ename, e.sal, s.grade �޿���� from emp e, salgrade s where e.sal >= s.losal and e.sal <= s.hisal order by 3;

--���� �̸�, �޿�, �޿����, �μ��� �˻��ϱ�
select e.ename, e.sal, s.grade,d.dname from emp e, salgrade s, dept d where e.sal between s.losal and s.hisal and e.deptno = d.deptno and e.ename = '�̹���';

--self Join
select * from emp;

select e.ename ����, m.ename ���ӻ�� from emp e, emp m where e.mgr = m.empno order by e.empno;

--ANSI(�̱�ǥ�ؿ�����) Join
--ANSI Cross Join 
select * from emp cross join dept;

--ANSI Inner Join
select e.ename, d.dname, d.deptno from emp e join dept d on e.deptno = d.deptno where e.ename='�̹���';

select e.ename, e.sal, s.grade,d.dname from emp e join salgrade s on e.sal between s.losal and s.hisal join dept d on e.deptno = d.deptno where e.ename = '�̹���';

--ANSI Outer Join
select e.ename ����, m.ename ���ӻ�� from emp e left outer join  emp m on e.mgr = m.empno order by e.empno;


--�̼�
--1. �渮�ο��� �ٹ��ϴ� ����� �̸��� �Ի��� �˻�
select * from emp;
select e.ename,to_char(e.hiredate, 'YYYY/MM/DD') �Ի��� from emp e, dept d where e.deptno = d.deptno and d.dname ='�渮��'; 

--2. ��õ���� �ٹ��ϴ� ����� �̸��� �޿� �˻�
select e.ename, e.sal from emp e inner join dept d on e.deptno = d.deptno and d.loc='��õ';                                                                                                                                                                  


