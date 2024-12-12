--7 ���̺� ������ ����, ����, �����ϴ� DDL
--���̺� ������ ����� create table��
--��� ������ �����ϱ� ���� ���̺� ����
create table emp01(
    empno number(4),
    ename varchar2(14),
    sal number(7, 3)
);

desc emp01;

--���̺� ������ �����ϴ� alter table��
--�÷� �߰�
alter table emp01 add(birth date);

--�÷� ����
alter table emp01 modify ename varchar2(30);

desc emp01;

--�÷� ����
alter table emp01 drop column ename;

--set unused
alter table emp01 set unused (sal);

alter table emp01 drop unused columns;

desc emp01;

--���̺� ���� �����ϴ� rename��
rename emp01 to emp02;

--���̺� ������ �����ϴ� drop table��
--��� �����͸� �����ϴ� truncate table��
drop table emp02;

desc emp02;

--7�� �̼�
--1. 
create table dept_mission(
    DNO number(2),
    DNAME varchar2(14),
    LOC varchar2(13)
    );
desc dept_mission;

--2.
create table emp_mission(
    ENO number(4),
    ENAME varchar2(10),
    DNO number(2)
    );
desc emp_mission;

--3.
alter table emp_mission modify ENAME varchar2(25);
desc emp_mission;

--4.
drop table emp_mission;
desc emp_mission;

--5.
alter table dept_mission drop column DNAME;
desc dept_mission;

--6.
alter table dept_mission set unused (LOC);
desc dept_mission;

--7.
alter table dept_mission drop unused columns;
desc dept_mission;

--8.dept_mission�� deptartment�� �̸����� ����
rename dept_mission to deptartment;
desc dept_mission;
desc deptartment;

--����

