--10�� ����

--11. ����̸�, �μ���ȣ,�μ��� �˻��ϱ�
select *from emp;
select *from dept;
select e.ename,d.deptno,d.dname from emp e join dept d on e.deptno = d.deptno order by 2;
--12. �渮�� �μ� �Ҽ� ������ �̸��� �Ի��� �˻��ϱ�
select e.ename, e.hiredate from emp e join dept d on e.deptno = d.deptno and d.dname = '�渮��';
--13. ������ ������ ������ �̸�, �μ��� �˻��ϱ�
select e.ename, d.dname from emp e join dept d on e.deptno = d.deptno and e.job = '����';
--14. ���ۻ���� ���켺�� �������� �̸��� ���� �˻��ϱ�
select work.ename, work.job from emp work join emp manager on work.mgr = manager.empno where manager.ename = '���켺';
--15. ���켺�� ������ �ٹ������� �ٹ��ϴ� ������ �̸� �˻��ϱ�
select work.ename, friend.ename from emp work join emp friend on work.deptno = friend.deptno where work.ename = '���켺' and friend.ename <> '���켺';