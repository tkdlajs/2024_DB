--8�� ���̺��� ������ �߰�,����, �����ϴ� DML
--���̺� ������ �߰��ϴ� insert��
--�μ� ������ �����ϱ� ���� ���̺� ����
create table dept02(
    deptno number(2),
    dname varchar2(14),
    loc varchar2(13)
);

--�渮�� �Է�
insert into dept02 values(10, '�渮��', '����');

--�λ�� �Է�
insert into dept02 (deptno, loc, dname) values(20, '��õ', '�λ��');

--������ �Է� - ��������� null�Է�
insert into dept02 values(30, '������','');

--����� �Է� - ��������� null�Է�
insert into dept02 values(40, '�����', null);

--��ȹ�� �Է� - �ӽ������� null�Է�
insert into dept02 (deptno, dname) values(50, '��ȹ��');

select * from dept02;

--������̺� �����ϱ�
create table emp02(
    empno number(4),
    ename varchar2(10),
    job varchar2(9),
    hiredate date,
    deptno number(2)
);

--��¥ ������ �Է��ϱ�
insert into emp02 values(1001, '����', '���', '2015/03/01', 20);

insert into emp02 values(1002, '�ѿ���', '�븮', to_date('2014,05,01', 'YYYY, MM, DD'), 20);

insert into emp02 values(1003, '������', '����', sysdate, 30);
select * from emp02;

--���̺��� ������ �����ϴ� update��
update dept02 set dname='�����' where deptno=10;

update dept02 set dname='�����2', loc='�λ�' where deptno=20;

select * from dept02;

--���̺��� ������ �����ϴ� delete��
delete dept02;
--where deptno=10;

--Ʈ����� ����
commit;
rollback;

--8�� �̼�
--1-1
create table employee03(
    empno number(4) not null,
    ename varchar2(20),
    job varchar2(20),
    sal number(7, 3)
);

--1-2
insert into employee03 values(1000, '�ѿ��', '�·�', 100);
insert into employee03 values(1010, '����', '�ǰ�', 150);
insert into employee03 values(1020, '�ֽð�', '��������', 250);
insert into employee03 values(1030, '���', NULL, 250);
insert into employee03 values(1040, '��������', '', 200);

select * from employee03;
--1-3
update employee03 set sal = sal + 50 where sal < 200;

--2-1
delete employee03 where job is null;