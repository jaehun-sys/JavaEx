SET SERVEROUTPUT ON;

DECLARE
VNO VARCHAR2(20);
BEGIN
	SELECT 	TO_CHAR(SYSDATE, 'YYYY-MM-DD')
	INTO 	VNO
	FROM 	DUAL;
	DBMS_OUTPUT.PUT_LINE(VNO);
END;


-- ��� �Է� �޾� ������̺��� ���, ����̸�, ����, �Ի����� ���������
DECLARE
	V_EMPNO		EMPLOYEES.EMPLOYEE_ID%TYPE	;
	V_NAME		EMPLOYEES.FIRST_NAME%TYPE	;
	V_SAL		EMPLOYEES.SALARY%TYPE		;
	V_HIRE_DATE	EMPLOYEES.HIRE_DATE%TYPE	;
BEGIN
	SELECT 	EMPLOYEE_ID	,
			FIRST_NAME	,
			SALARY		,
			HIRE_DATE
	INTO	V_EMPNO		,
			V_NAME		,
			V_SAL		,
			V_HIRE_DATE
	FROM	HR.EMPLOYEES
	WHERE 	EMPLOYEE_ID = :EMPNO;
DBMS_OUTPUT.PUT_LINE(V_EMPNO||' ' ||V_NAME||' '||V_SAL||' '||V_HIRE_DATE);
END;


-- �� ���� ���ڸ� �Է¹޾� �հ踦 ����ϼ���
SELECT * FROM HR.EMPLOYEES ;
DECLARE
	V_NO1 NUMBER := :NO1;
	V_NO2 NUMBER := :NO2;
	V_SUM NUMBER;
BEGIN
	V_SUM := V_NO1 + V_NO2;
	DBMS_OUTPUT.PUT_LINE('ù��° ��: '||V_NO1||', �ι�° ��: '||V_NO2||', ���� : '||V_SUM||' �Դϴ�');
END;

CREATE OR REPLACE PROCEDURE HR.UPDATE_SALARY
(V_EMPNO IN NUMBERIS)
BEGIN
	UPDATE 	EMPLOYEES 
	SET		SALARY = SALARY * 1.1
	WHERE 	EMPLOYEE_ID = V_EMPNO;

	COMMIT;
END UPDATE_SALARY;


CREATE OR REPLACE FUNCTION FC_UPDATE_SALARY
(V_EMPNO IN NUMBER)
RETURN NUMBER 
IS V_SALARY EMPLOYEES.SALARY%TYPE;
BEGIN
	UPDATE 	EMPLOYEES 
	SET		SALARY = SALARY * 1.1
	WHERE 	EMPLOYEE_ID = V_EMPNO;
	COMMIT;
	SELECT 	SALARY 
	INTO	V_SALARY
	FROM	EMPLOYEES e 
	WHERE 	EMPLOYEE_ID = V_EMPNO;
	RETURN	V_SALARY;
END;




CREATE OR REPLACE PROCEDURE PRINT_EMP
( v_input employees.EMPLOYEE_ID%TYPE )
IS
		v_row employees%ROWTYPE;
BEGIN
	SELECT 	employee_id, first_name, s
			alary, department_id
	INTO 	v_row.employee_id	, 
			v_row.first_name	,	 
			v_row.salary		, 
			v_row.department_id
	FROM 	EMPLOYEES
	WHERE 	EMPLOYEE_ID = v_input;
			dbms_output.put_line
			( v_row.employee_id||' '||v_row.first_name||' '||v_row.salary||' '||v_row.department_id);
END PRINT_EMP;
--���ν��� ȣ��
CALL HR.PRINT_EMP(114);
EXECUTE PRINT_EMP(113);	-- ��� Ŀ�ǵ�â����



CREATE OR REPLACE PROCEDURE RowType_Test
( p_empno IN employees.employee_id%TYPE )
IS
	v_emp employees%ROWTYPE;
BEGIN
	DBMS_OUTPUT.ENABLE;
	SELECT 	employee_id	, 
			first_name	, 
			hire_date
	INTO 	v_emp.employee_id	, 
			v_emp.first_name	, 
			v_emp.hire_date
	FROM 	employees
	WHERE 	employee_id = p_empno;
			DBMS_OUTPUT.PUT_LINE('EMP NO : '||v_emp.employee_id);
			DBMS_OUTPUT.PUT_LINE('EMP NAME : '||v_emp.first_name);
			DBMS_OUTPUT.PUT_LINE('EMP HIREDATE : '||v_emp.hire_date);
END;


--Composite DataTypes: PL/SQL���̺�
CREATE OR REPLACE PROCEDURE TABLE_TEST
(v_deptno IN employees.DEPARTMENT_ID%TYPE)
IS
	-- ���̺��� ����
	TYPE empno_table IS TABLE OF employees.employee_id%TYPE INDEX BY BINARY_INTEGER;
	TYPE ename_table IS TABLE OF employees.first_name%TYPE INDEX BY BINARY_INTEGER;
	TYPE sal_table 	 IS TABLE OF employees.salary%TYPE INDEX BY BINARY_INTEGER;
	-- ���̺�Ÿ������ ���� ����
	empno_tab empno_table ; 
	ename_tab ename_table ; 
	sal_tab sal_table;
	i BINARY_INTEGER := 0;
BEGIN 
	DBMS_OUTPUT.ENABLE;
	-- FOR ���� ���
	-- ���⼭ emp_list�� ( BINARY_INTEGER�� ������) 1�� ����
	FOR emp_list IN ( SELECT employee_id, first_name, salary
					  FROM   employees 
					  WHERE  department_id = v_deptno ) LOOP
	    i := i + 1;
	    -- ���̺� ������ �˻��� ����� �ִ´�
		empno_tab(i) := emp_list.employee_id ;
		ename_tab(i) := emp_list.first_name ;
		sal_tab(i) := emp_list.salary ;
	END LOOP;
	-- 1���� i���� FOR ���� ����
	FOR cnt IN 1..i LOOP
		-- TABLE������ ���� ���� �ѷ���
		DBMS_OUTPUT.PUT_LINE( '�����ȣ : ' || empno_tab(cnt) ); 
		DBMS_OUTPUT.PUT_LINE( '����̸� : ' || ename_tab(cnt) ); 
		DBMS_OUTPUT.PUT_LINE( '����޿� : ' || sal_tab(cnt));
	END LOOP; 
END TABLE_TEST;

CALL TABLE_TEST(113); 


CREATE OR REPLACE PROCEDURE TABLE_OF_RECORD
IS 
	i BINARY_INTEGER := 0;
	--PL/SQL Table of Record�� ����
	TYPE DEPT_TABLE_TYPE IS TABLE OF DEPARTMENTS%ROWTYPE INDEX BY BINDARY_INTEGER;
	DEPT_TABLE DEPT_TABLE_TYPE;
BEGIN
	FOR DEPT_LIST IN (SELECT * FROM DEPARTMENTS) LOOP
		i := i+1;
		
		--TABLE OF RECORD�� ������ ����
		DEPT_TABLE(i).DEPARTMENT_ID := DEPT_LIST.DEPARTMENT_ID;
		DEPT_TABLE(i).DEPARTMENT_NAME := DEPT_LIST.DEPARTMENT_NAME;
		DEPT_TABLE(i).LOCATION_ID := DEPT_LIST.LOCATION_ID;
	END LOOP;

	FOR cnt IN 1..i LOOP
		--������ ���
		DBMS_OUTPUT.PUT_LINE(' DEPT NO : ' || DEPT_TABLE(cnt).DEPARTMENT_ID || 
							 ' DEPT NAME : ' || DEPT_TABLE(cnt).DEPARTMENT_NAME ||
							 ' DEPT LOC : ' || DEPT_TABLE(cnt).LOCATION_ID );
	END LOOP;
END;

CALL TABLE_OF_RECORD;