--11�� ���� ����
--������ ���� ����
--�̹��� ������ �μ��� �˻�
select deptno from emp where ename = '�̹���';

select dname from dept where deptno = 10;

select e.ename,d.dname from emp e join dept d  on e.deptno = d.deptno where e.ename = '�̹���';

select dname from dept where deptno = ( select deptno from emp where ename = '�̹���' );

--��� �޿����� �� ���� �޿��� �޴� ���� �˻��ϱ�
select ename, sal from emp where sal > (select avg(sal) from emp );

--�ּ� �޿��� �޴� ���� �˻��ϱ�
select ename, sal from emp where sal = ( select min(sal) from emp);

--������ ���� ����
--�޿��� 500�� �ʰ��ϴ� ������ ���� �μ��� �ٹ��ϴ� ���� ���ϱ�
select ename, sal, deptno from emp where deptno in (select deptno from emp where sal > 500);

--30�� �μ��� ��� �޿����� �� ���� �޿��� �޴� ���� �˻��ϱ�
select sal from emp where sal > all (select sal from emp where deptno = 30);    --all ���

select sal from emp where sal > (select max(sal) from emp where deptno = 30);   --max

select sal from emp where sal > all (select sal from emp where deptno = 30);    

--30�� �μ��� �ּ� �޿�����  ���� �޿��� �޴� ���� �˻��ϱ�
select sal from emp where sal > any (select sal from emp where deptno = 30);    --any ���

select sal from emp where sal > (select min(sal) from emp where deptno = 30);   --min ���


--������ �ִ� �μ� �˻��ϱ�
select * from dept where exists ( select * from emp where emp.deptno = dept.deptno) order by deptno; 

--���� ������ �̿��Ͽ� ���̺��� �����ϰ�, �����и� �����ϱ�
--���� ������ ���̺� �����ϱ�

create table emp02 as select * from emp;

select * from emp03;

create table emp10 as select * from emp where deptno = 10;

create table emp20 as select empno, ename, sal, deptno from emp where deptno = 20;

create table emp03 as select * from emp where 1=0;

--���� ������ �����͸� �����ϱ�
create table dept02 as select * from dept where 1=0;
select * from dept02;

insert into dept02 select * from dept;

--���� ������ �̿��� ������ ����
--20�μ��� �������� 40�μ��� ���������� ����
update dept02 set loc = ( select loc from dept02 where deptno = 40) where deptno = 20;
select * from dept02;

--���� ������ �̿��� ������ ���� 
--������ �μ��� �Ҽӵ� ���� �����ϱ� 
delete from emp02 where deptno = ( select deptno from dept02 where dname = '������');

select * from emp02;

--�̼� 
--1. �����ο��� �ٹ��ϴ� ��� ������ �̸��� �޿� �˻� 
select ename �̸�,sal �޿�, deptno from emp where deptno = ( select deptno from dept where dname = '������');  


