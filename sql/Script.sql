SELECT * FROM COUNTRIES;

SELECT	EMPLOYEE_ID	, 
		FIRST_NAME	, 
		LAST_NAME
FROM	EMPLOYEES;

SELECT  EMPLOYEE_ID AS 	EMPNO, 
		FIRST_NAME 		"E_NAME", 
		SALARY 			"�� ��"
FROM	EMPLOYEES;

SELECT 	E.FIRST_NAME 	"����̸�"	,
		E.PHONE_NUMBER 	"��ȭ��ȣ"	,
		E.HIRE_DATE 	"�Ի���"	,
		E.SALARY		"�޿�"
FROM	EMPLOYEES E;

--���� ������
SELECT 	FIRST_NAME	||	LAST_NAME	
FROM 	EMPLOYEES;

--���������
SELECT	FIRST_NAME, SALARY, SALARY*12, (SALARY+300)*12	
FROM	EMPLOYEES;

SELECT	E.FIRST_NAME || '-' ||	E.LAST_NAME		"����"	,
		E.SALARY								"�޿�"	,
		E.SALARY * 12							"����"	,
		E.SALARY * 12 + 5000					"����2"	,
		E.PHONE_NUMBER 							"��ȭ��ȣ"	,
		E.HIRE_DATE								"�Ի���"
FROM	EMPLOYEES E;
		
SELECT 	FIRST_NAME
FROM	EMPLOYEES
WHERE 	DEPARTMENT_ID = 10;

--�޿��� 15000 �̻��� ������� �̸��� �޿��� ���� ���
SELECT	E.FIRST_NAME	"�̸�",
		E.SALARY		"�޿�",
		E.SALARY * 12	"����"
FROM	EMPLOYEES E
WHERE 	E.SALARY >= 15000;

--07/01/01 �� ���Ŀ� �Ի��� ������� �̸��� �Ի����� ���
SELECT 	E.FIRST_NAME 	"�̸�",
		E.HIRE_DATE		"�Ի���"
FROM	EMPLOYEES E
WHERE	E.HIRE_DATE >= '07/01/01';

--�̸��� Lex�� ������ ���� ���
SELECT 	E.SALARY	"����"
FROM	EMPLOYEES E
WHERE 	E.FIRST_NAME = 'Lex';

--������ 14000 �����̰ų� 17000 �̻��� ������� �̸��� ���� ���
SELECT 	E.FIRST_NAME	"�̸�",
		E.SALARY		"����"
FROM	EMPLOYEES E
WHERE 	SALARY >= 14000 AND	SALARY <= 17000;

SELECT 	FIRST_NAME,
		SALARY
FROM	EMPLOYEES
WHERE 	SALARY BETWEEN 14000 AND 17000;

--IN �����ڷ� ���� ���� �˻�
SELECT 	FIRST_NAME	,
		LAST_NAME	,
		SALARY
FROM	EMPLOYEES
WHERE 	FIRST_NAME IN ('Neena', 'Lex', 'John');

--�޿��� 2100, 3100, 4100, 5100 �� ����� �̸��� �޿� ���
SELECT 	E.FIRST_NAME	"�̸�",
		E.SALARY		"�޿�"
FROM	EMPLOYEES E
WHERE 	E.SALARY IN (2100, 3100, 4100, 5100);

--�̸��� am�� ������ ����� �̸��� ������ ���
SELECT 	E.FIRST_NAME	"�̸�",
		E.SALARY		"����"
FROM 	EMPLOYEES E
WHERE 	E.FIRST_NAME || E.LAST_NAME LIKE '%am%';

SELECT 	FIRST_NAME 		, 
		SALARY 			, 
		COMMISSION_PCT 	, 
		SALARY * COMMISSION_PCT 
FROM 	EMPLOYEES E 
WHERE 	SALARY BETWEEN 13000 AND 15000;

--NULL�� ������ ������� NULL
SELECT 	E.FIRST_NAME,
		E.SALARY	,
		E.COMMISSION_PCT
FROM	EMPLOYEES E
WHERE 	E.COMMISSION_PCT IS NULL;

--�μ���ȣ�� ������������ �����ϰ� �μ���ȣ, �޿�, �̸��� ���
SELECT 		E.DEPARTMENT_ID	,
			E.SALARY		,
			E.FIRST_NAME
FROM		EMPLOYEES E
ORDER BY 	1;

--�ݿ��� 5000 �̻��� ������ �̸�, �޿��� �޿��� ū �������� ���
SELECT 		E.DEPARTMENT_ID	,
			E.SALARY		,
			E.FIRST_NAME
FROM		EMPLOYEES E
WHERE 		E.SALARY >= 5000
ORDER BY 	2 DESC;

--�μ���ȣ�� ������������ �����ϰ� �μ���ȣ�� ������ �޿��� ���� ������� �μ���ȣ, �޿�, �̸� ���
SELECT 		E.DEPARTMENT_ID	,
			E.SALARY		,
			E.FIRST_NAME
FROM		EMPLOYEES E
ORDER BY 	DEPARTMENT_ID 	ASC, 
			SALARY 			ASC;

--�����Լ� - INITCAP(�÷���)
--������ ù ���ڸ� �빮�ڷ� ����ϰ� �������� ���� �ҹ��ڷ� ����ϴ� �Լ�
SELECT 	EMAIL			,
		INITCAP(EMAIL)	,
		DEPARTMENT_ID
FROM	EMPLOYEES e 
WHERE 	DEPARTMENT_ID = 100;

--�����Լ� - LOWER(�÷���) / UPPER(�÷���)
--�ԷµǴ� ���� ���� �ҹ���/�빮�ڷ� �����ϴ� �Լ�
SELECT 	FIRST_NAME, LOWER(FIRST_NAME), UPPER(FIRST_NAME)
FROM	EMPLOYEES e 
WHERE 	DEPARTMENT_ID = 100;

--�����ռ� - SUBSTR(�÷���, ������ġ, ���ڼ�)
SELECT 	FIRST_NAME				, 
		SUBSTR(FIRST_NAME, 1, 3),
		SUBSTR(FIRST_NAME, -3, 2)
FROM	EMPLOYEES e
WHERE 	DEPARTMENT_ID = 100;

--�����Լ� - LPAD(�÷���, �ڸ���, 'ä�﹮��') / RPAD(�÷���, �ڸ���, 'ä�﹮��')
SELECT 	FIRST_NAME					,
		LPAD(FIRST_NAME, 10, '*')	,
		RPAD(FIRST_NAME, 10, '*')
FROM	EMPLOYEES;

--�����Լ� - REPLACE(�÷���, ����1, ����2)
SELECT 	FIRST_NAME,
		REPLACE(FIRST_NAME, 'a', '*')
FROM	EMPLOYEES e
WHERE 	DEPARTMENT_ID = 100;

SELECT 	FIRST_NAME						,
		REPLACE(FIRST_NAME, 'a', '*')	,
		REPLACE(FIRST_NAME, SUBSTR(FIRST_NAME, 2, 3), '***')
FROM	EMPLOYEES e 
WHERE 	DEPARTMENT_ID = 100;

SELECT 	FIRST_NAME, MONTHS_BETWEEN(SYSDATE, HIRE_DATE)
FROM	EMPLOYEES e 
WHERE 	DEPARTMENT_ID = 110;

--TO_CHAR(����, '��¸��') ������ -> ������
SELECT 	FIRST_NAME, TO_CHAR(SALARY * 12, '$999,999.99') "SAL"
FROM 	EMPLOYEES e 
WHERE 	DEPARTMENT_ID =110;

SELECT 	SYSDATE,
		TO_CHAR(SYSDATE, 'YYYY"��" MM"��" DD"��" HH24:MI:SS')
FROM 	DUAL;

--������ �Ի���(HIRE_DATE) �ø�����(ASC)���� ���� ���Ӻ��� ����� �ǵ��� �ϼ���. 
--�̸�(FIRST_NAME LAST_NAME), ����(SALARY), ��ȭ��ȣ(PHONE_NUMBER), �Ի���(HIRE_DATE) �����̰� 
--"�̸�", "����", "��ȭ��ȣ", "�Ի���" �� �÷��̸��� ��ü(COLUMN ALIAS)�� ������.
SELECT 		E.FIRST_NAME || ' ' || E.LAST_NAME	"�̸�"	,
			E.SALARY							"����"	,
			E.PHONE_NUMBER						"��ȭ��ȣ"	,
			E.HIRE_DATE							"�Ի���"
FROM 		EMPLOYEES E
ORDER BY 	HIRE_DATE ASC;

--����(JOB_ID)�� ����(SALARY)�� ������ ��������(DESC)�� �����ϼ���.
SELECT 		E.JOB_ID, 
			E.SALARY
FROM		EMPLOYEES e 
ORDER BY 	1 ASC, 2;

--��� �Ŵ����� ��ġ�Ǿ������� Ŀ�̼Ǻ����� ����, ������ 3000�ʰ��� ������ �̸�, �Ŵ��� ���̵�, Ŀ�̼� ����, ������ ���
SELECT 	E.FIRST_NAME	,
		E.MANAGER_ID	,
		E.COMMISSION_PCT,
		E.SALARY
FROM	EMPLOYEES e 
WHERE 	E.MANAGER_ID IS NOT NULL 
AND		E.COMMISSION_PCT IS NULL 
AND   	E.SALARY > 3000;

--������ 14000 �̸� 10000 �̻��� ������ �̸�(FIRST_NAME), ����, Ŀ�̼��ۼ�Ʈ�� ���޼�(��������) ���
SELECT 		E.FIRST_NAME,
			E.SALARY	,
			E.COMMISSION_PCT
FROM 		EMPLOYEES e 
WHERE 		E.SALARY < 14000 AND E.SALARY >= 10000
ORDER BY 	E.SALARY DESC;

--�μ���ȣ�� 10, 90, 100 �� ������ �̸�, ����, �Ի���, �μ���ȣ�� ��Ÿ���ÿ�
--�Ի����� 1977-12 �� ���� ǥ���Ͻÿ�
SELECT 	E.FIRST_NAME					"�̸�"	, 
		E.SALARY						"����"	,
		TO_CHAR(E.HIRE_DATE, 'YYYY-MM')	"�Ի���"	,
		E.EMPLOYEE_ID					"�μ���ȣ"
FROM 	EMPLOYEES E
WHERE 	E.DEPARTMENT_ID IN (10,90,100);

--�̸�(FIRST_NAME)�� S �Ǵ� s �� ���� ������ �̸�, ������ ��Ÿ���ÿ�
SELECT 	E.FIRST_NAME,
		E.SALARY	,
FROM 	EMPLOYEES E
WHERE 	E.FIRST_NAME LIKE '%s%',
		E.FIRST_NAME LIKE '%S%'	;
		
SELECT 	E.FIRST_NAME,
		E.SALARY	,
FROM 	EMPLOYEES E
WHERE 	LOWER(E.FIRST_NAME) LIKE '%s%';

--��ü �μ��� ����Ϸ��� �մϴ�. ������ �μ� �̸��� �� �������.
SELECT 		D.DEPARTMENT_NAME
FROM		DEPARTMENTS d 
ORDER BY 	LENGTH (D.DEPARTMENT_NAME) DESC;

--��Ȯ���� ������, ���簡 ���� ������ ����Ǵ� �����̸��� �빮�ڷ� ����ϰ�, ��������(ASC)���� �����Ͻÿ�

--�׷��Լ� - COUNT()
SELECT 	COUNT(*), COUNT(E.COMMISSION_PCT)
FROM	EMPLOYEES e ;

--�׷��Լ� - SUM()
SELECT 	COUNT(*), SUM(SALARY)
FROM 	EMPLOYEES e ;

--HAVING ��
SELECT 		DEPARTMENT_ID	,
			COUNT(*)		,
			SUM(SALARY)
FROM 		EMPLOYEES e 
GROUP BY 	DEPARTMENT_ID
HAVING 		SUM(SALARY) > 20000;

--CASE ~ END �� / DECODE() �Լ�
SELECT 	EMPLOYEE_ID	,
		SALARY		,
		CASE	WHEN JOB_ID = 'AC_ACCOUNT'	THEN SALARY + SALARY * 0.1
				WHEN JOB_ID = 'AC_MGR'		THEN SALARY + SALARY * 0.2
				ELSE SALARY
		END 	JOB_ID 
FROM 	EMPLOYEES;

--������ �̸�, �μ�, ���� ����ϼ���
--���� �μ��ڵ�� �����ϸ� �μ��ڵ尡 10~50 �̸� ��A-TEAM��
--60~100�̸� ��B-TEAM�� 110~150�̸� ��C-TEAM�� �������� ���������� ���� ����ϼ���
SELECT 	E.FIRST_NAME	,
		E.DEPARTMENT_ID	,
		CASE WHEN DEPARTMENT_ID BETWEEN 10  AND 50	THEN	'A-TEAM'
			 WHEN DEPARTMENT_ID BETWEEN 60  AND 100	THEN 	'B-TEAM'
			 WHEN DEPARTMENT_ID BETWEEN 110 AND 150	THEN 	'������'
		END  TEAM
FROM 	EMPLOYEES e;

--JOIN
--īƼ�� ���δ�Ʈ
SELECT 	FIRST_NAME		,
		DEPARTMENT_NAME	
FROM 	EMPLOYEES e 	,
		DEPARTMENTS d 	;

--EQUI JOIN(� ����. ������)
SELECT 	FIRST_NAME			, 
		EM.DEPARTMENT_ID	,
		DEPARTMENT_NAME		,
		DE.DEPARTMENT_ID	
FROM	EMPLOYEES 	EM,
		DEPARTMENTS DE
WHERE 	EM.DEPARTMENT_ID = DE.DEPARTMENT_ID ;

--��� �����̸�, �μ��̸�, �������� ����ϼ���
SELECT 	E.FIRST_NAME		,
		D.DEPARTMENT_NAME	,
		J.JOB_TITLE		
FROM	EMPLOYEES 	e , 
		DEPARTMENTS d , 
		JOBS 		j 
WHERE 	E.DEPARTMENT_ID = D.DEPARTMENT_ID
AND 	E.JOB_ID = J.JOB_ID;

--NULL�� �� �� �ִ� �ʿ� (+)�� ���δ�.
--FULL OUTER JOIN
SELECT 	E.DEPARTMENT_ID		,
		E.FIRST_NAME		,
		D.DEPARTMENT_NAME	
FROM 	EMPLOYEES e FULL OUTER JOIN DEPARTMENTS d 
ON		E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--SELF JOIN
SELECT 	EMP.EMPLOYEE_ID 	,
		EMP.FIRST_NAME		,
		EMP.MANAGER_ID		,
		MAN.FIRST_NAME	MANAGER
FROM	EMPLOYEES EMP	, 
		EMPLOYEES MAN
WHERE 	EMP.MANAGER_ID = MAN.EMPLOYEE_ID(+) ;	

--������߿� �ְ��ӱ�(SALARY)�� �����ӱ��� '�ְ��ӱ�', '�����ӱ�' �������� Ÿ��Ʋ�� �Բ� ����� ������.
--�� �ӱ��� ���̴� ���ΰ���? '�ְ��ӱ� - �����ӱ�' �̶� Ÿ��Ʋ�� �Բ� ����� ������.
SELECT 	MAX(E.SALARY) - MIN(E.SALARY) "�ְ��ӱ� - �����ӱ�"
FROM	EMPLOYEES E;

--���������� ���Ի���� ���� ���� �����Դϱ�?
SELECT 	TO_CHAR(MAX(HIRE_DATE), 'YYYY"��" MM"��" DD"��"')
FROM	EMPLOYEES e ;

--�μ����� ����ӱ�, �ְ��ӱ�, �����ӱ��� �μ�(DEPARTMENT_ID)�� �Բ� ����ϰ� ���ļ����� �μ���ȣ(DEPARTMENT_ID) ���������Դϴ�.
SELECT 	DEPARTMENT_ID 	"�μ�"	,
		AVG(SALARY)		"����ӱ�"	,
		MAX(SALARY)		"�ְ��ӱ�"	,
		MIN(SALARY)		"�����ӱ�"
FROM 	EMPLOYEES e 
GROUP BY 	E.DEPARTMENT_ID 
ORDER BY 	E.DEPARTMENT_ID DESC;

--����(JOB_ID)���� ����ӱ�, �ְ��ӱ�, �����ӱ��� ����(JOB_ID)�� �Բ� ����ϰ� ���ļ����� ����(JOB_ID) ���������Դϴ�.
SELECT 	E.JOB_ID	,
		AVG(E.SALARY)	,
		MAX(E.SALARY)	,
		MIN(E.SALARY)	
FROM	EMPLOYEES e 
GROUP BY 	E.JOB_ID
ORDER BY 	1 DESC;

--���� ���� �ټ��� ������ �Ի�����?
SELECT 	TO_CHAR(MIN(HIRE_DATE), 'YYYY"��" MM"��" DD"��"')
FROM	EMPLOYEES e ;

--����ӱݰ� �����ӱ��� ���̰� 2000 �̸���
--�μ�(DEPARTMENT_ID), ����ӱ�, �����ӱ�, (����ӱ� - �����ӱ�)
--(����ӱ� - �����ӱ�) �� ������������ �����ؼ� ���
SELECT 		E.DEPARTMENT_ID	,
			AVG(E.SALARY)	,
			MIN(E.SALARY)	,
			AVG(E.SALARY) - MIN(E.SALARY)
FROM 		EMPLOYEES e 
GROUP BY 	E.DEPARTMENT_ID
HAVING 		AVG(E.SALARY) - MIN(E.SALARY) < 2000
ORDER BY 	4 DESC;

--����(JOB_ID)���� �ְ��ӱݰ� �����ӱ��� ���̸� ����غ�����.
--���̸� Ȯ���� �� �ֵ��� ������������ �����ϼ���
SELECT 		E.JOB_ID 						,
			MAX(E.SALARY)					,
			MIN(E.SALARY)					,
			MAX(E.SALARY) - MIN(E.SALARY)	
FROM 		EMPLOYEES e
GROUP BY 	E.JOB_ID;

--�� ���(EMPLOYEE)�� ���ؼ� ���(EMPLOYEE_ID), �̸�(FIRST_NAME), �μ���(DEPARTMENT_NAME), �Ŵ���(MANAGER)�� �̸�(FIRST_NAME)�� ��ȸ�ϼ���
SELECT 		E.EMPLOYEE_ID		"���"	,
			E.FIRST_NAME		"�̸�"	,
			D.DEPARTMENT_NAME 	"�μ���"	,
			M.FIRST_NAME		"�Ŵ���"
FROM		EMPLOYEES E 	,
			EMPLOYEES M		,
			DEPARTMENTS D
WHERE		E.MANAGER_ID = M.EMPLOYEE_ID (+)
AND			E.DEPARTMENT_ID = D.DEPARTMENT_ID ;

--����(REGION)�� ���� ������� ����(REGION_NAME), �����̸�(COUNTRY_NAME)���� ����ϵ� �����̸�, �����̸� ������� ������������ �����ϼ���
SELECT 		R.REGION_NAME		"����"	,
			C.COUNTRY_NAME		"�����̸�"	
FROM 		REGIONS r 	,
			COUNTRIES c 
WHERE 		R.REGION_ID = C.REGION_ID
ORDER BY 	R.REGION_ID	DESC ;

--�� �μ�(DEPARTMENT)�� ���ؼ� 	�μ���ȣ(DEPARTMENT_ID), 
--							�μ��̸�(DEPARTMENT_NAME), 
--							�Ŵ���(MANAGER)�� �̸�(FIRST_NAME), 
--							��ġ(LOCATION)�� ����(CITY), 
--							����(COUNTRY)�� �̸�(COUNTRIES_NAME) �׸��� 
--							��������(REGIONS)�� �̸�(REGION_NAME)���� ���� ���
SELECT 	D.DEPARTMENT_ID 	"�μ���ȣ"		,
		D.DEPARTMENT_NAME	"�μ��̸�"		,
		E.FIRST_NAME		"�Ŵ����̸�"	,
		L.CITY				"�����̸�"		,
		C.COUNTRY_NAME		"�����̸�"		,
		R.REGION_NAME		"�����̸�"
FROM	REGIONS 	R ,
		LOCATIONS 	L ,
		DEPARTMENTS D ,
		COUNTRIES 	C ,
		EMPLOYEES 	E
WHERE 	E.EMPLOYEE_ID = D.MANAGER_ID
AND 	L.LOCATION_ID = D.LOCATION_ID
AND 	L.COUNTRY_ID  = C.COUNTRY_ID 
AND 	R.REGION_ID   = C.REGION_ID 
ORDER BY D.DEPARTMENT_ID ;

--'Public Accountant'�� ��å(job_title)���� ���ſ� �ٹ��� ���� �ִ� ��� ����� ����� �̸��� ����ϼ���.
--(���� 'Public Accountant'�� ��å(job_title)���� �ٹ��ϴ� ����� ������� �ʽ��ϴ�.)
--�̸��� first_name�� last_name�� ���� ����մϴ�.
SELECT 	E.EMPLOYEE_ID, 
		E.FIRST_NAME || ' ' || E.LAST_NAME
FROM	JOB_HISTORY jh	,
		JOBS 		j 	, 	
		EMPLOYEES   E
WHERE	J.JOB_ID = JH.JOB_ID
AND		JH.EMPLOYEE_ID = E.EMPLOYEE_ID 
AND		J.JOB_TITLE = 'Public Accountant';

--�ڽ��� �Ŵ������� ä����(HIRE_DATE)�� ���� ����� ���(EMPLOYEE_ID), ��(LAST_NAME)�� ä����(HIRE_DATE)�� ��ȸ�ϼ���
SELECT 	E.EMPLOYEE_ID 	"���"	,
		E.LAST_NAME 	"��"		,
		E.HIRE_DATE		"ä����"	,
		E.MANAGER_ID
FROM	EMPLOYEES E	,
		EMPLOYEES M
WHERE 	E.MANAGER_ID = M.EMPLOYEE_ID 
AND 	E.HIRE_DATE < M.HIRE_DATE ;

--��� �޿����� ���� �޿��� �޴� ������ �� ���̳� �ֽ��ϱ�?
SELECT 	COUNT(*)
FROM	EMPLOYEES e
WHERE 	E.SALARY < (SELECT 	AVG(E.SALARY)
					FROM	EMPLOYEES e );

--�������� ������				
SELECT 	FIRST_NAME	,
		SALARY		
FROM 	EMPLOYEES e 
WHERE 	SALARY > ALL (	SELECT 	SALARY
						FROM	EMPLOYEES e2
						WHERE	DEPARTMENT_ID = 110	);


--�� �μ����� �ְ�޿��� �޴� ����� ����ϼ���
--���̺��� ����
SELECT	E.DEPARTMENT_ID ,
		E.EMPLOYEE_ID	, 
		E.FIRST_NAME 	,
		E.SALARY 		
FROM	EMPLOYEES E	,
		(	SELECT 		MAX(E2.SALARY) 		AS SALARY	,
						E2.DEPARTMENT_ID	AS DEPARTMENT_ID
			FROM		EMPLOYEES E2 
			GROUP BY 	E2.DEPARTMENT_ID	) E3
WHERE 	 E.DEPARTMENT_ID = E3.DEPARTMENT_ID 
AND		 E.SALARY = E3.SALARY
ORDER BY E.DEPARTMENT_ID ;

--���������� ��
SELECT 	DEPARTMENT_ID 	, 
		EMPLOYEE_ID 	, 
		FIRST_NAME 		, 
		SALARY 
FROM 	EMPLOYEES e 
WHERE (DEPARTMENT_ID , SALARY) IN (	SELECT	 DEPARTMENT_ID , MAX(SALARY)
									FROM 	 EMPLOYEES 
									GROUP BY DEPARTMENT_ID)
ORDER BY DEPARTMENT_ID ;

--�� ����(JOB) ���� ����(SALARY)�� ������ ���ϰ��� �մϴ�. ���� ������ ���� ���� �������� ������(JOB_TITLE)�� ���� ������ ��ȸ�Ͻÿ�.
SELECT 	J.JOB_TITLE 	"������"		,
		SUM(E.SALARY)	"���� ����"	
FROM	JOBS J, EMPLOYEES E
WHERE	J.JOB_ID = E.JOB_ID 
GROUP BY J.JOB_TITLE
ORDER BY SUM(E.SALARY) DESC;
		
--���������� Ǯ��
SELECT 	J.JOB_TITLE	,
		T.SALARY 	
FROM	JOBS J,
		( SELECT JOB_ID				,
				 SUM(SALARY) SALARY 
          FROM	 EMPLOYEES e 
          GROUP BY JOB_ID ) T
WHERE J.JOB_ID = T.JOB_ID
ORDER BY SALARY DESC;


