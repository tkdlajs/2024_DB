--13�� ������
create table emp06 (
    empno number(4) primary key,
    ename varchar2(10),
    hiredate date
);
    
create sequence emp06_seq
    start with 1
    increment by 1
    maxvalue 9999999999;
    
insert into emp06 values(emp06_seq.nextval, 'ȫ�浿', sysdate);
    
insert into emp06 values(emp06_seq.nextval, '�̼���', sysdate);

select *from emp06;