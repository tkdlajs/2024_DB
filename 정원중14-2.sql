--11�� ����
--7. emp ���̺�� ������ emp06 ���̺� �����
create table emp06 as select * from emp;
select * from emp06;

--8. ������� �ּ� �޿����� ���� �޿��� �޴� ������ �̸��� �޿��� ���� �˻��ϱ�
select ename, sal, job from emp06 where sal > any (select sal from emp06 where job = '����');   

--9. ��õ�� ��ġ�� �μ��� �Ҽӵ� �������� �޿��� 100�λ��ϴ� ������ �ۼ��ϱ�
select * from emp;
select * from dept;
update emp06 set sal = sal + 100  where deptno = ( select deptno from dept where loc = '��õ'); 

--10.�渮�ο� �Ҽӵ� ����鸸 �����ϴ� ������ �ۼ��ϱ�
delete from emp06 where deptno = ( select deptno from dept02 where dname = '�渮��');

--���ĺ��� emp ���̺� �̿��ϱ�
--11. '�̹���'�� ���� �μ����� �ٹ��ϴ� ����� �̸��� �μ� ��ȣ�� ����ϱ�
select ename, deptno from emp where deptno = (select deptno from emp where ename = '�̹���') and ename <> '�̹���';

--12. '�̹���'�� ������ ������ ���� ���� ����ϱ�
select * from emp where job = (select job from emp where ename = '�̹���') and ename <> '�̹���';

--13. �̹��� �޿��� �����ϰų� �� ���� �޴� ������ �̸��� �޿� �˻��ϱ�
select ename, sal from emp where sal > (select sal from emp where ename = '�̹���'); 

--14. ��õ���� �ٹ��ϴ� ������ �̸�, �μ���ȣ �˻��ϱ�
select ename, deptno from emp where deptno = (select deptno from dept where loc = '��õ');

--15. ���ӻ���� ���켺�� ������ ������ �޿� �˻��ϱ�
select * from emp;
select ename,sal, mgr from emp where mgr = ( select empno from emp where ename = '���켺');  

--16. �μ����� ���� �޿��� ���� �޴� ������ ��ȣ, �̸�, �޿�, �μ���ȣ �˻��ϱ�
select empno, ename, sal, deptno from emp  where sal in (select max(sal) from emp group by deptno)order by deptno;

select empno, ename, sal, deptno from emp  where (deptno,sal) in (select deptno,max(sal) from emp group by deptno)order by deptno;

select empno, ename, sal, deptno from emp e where sal = (select max(sal) from emp where deptno = e.deptno )order by deptno;

--17. ������ ������ ������ ���� �μ��� �μ���ȣ, �μ���, ���� �˻��ϱ�
select deptno,dname,loc from dept where deptno in (select deptno from emp where job='����');

--18.��� ���庸�� �޿��� ���� �޴� �������� �̸��� �޿�, ���� �˻��ϱ� ��, ������ ������� �ʴ´�.
select ename, sal, job from emp where sal > (select max(sal) from emp where job = '����');  


