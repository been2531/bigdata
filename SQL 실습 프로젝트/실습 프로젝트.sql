-- IMPORT_EXCEL.SQL
-- excel_exam.xlsx ������ import�Ͽ� EXAM ���̺� �����ϱ�

--1 [1] TABLE �����
CREATE TABLE MAN (
    PROBLEM   VARCHAR2(40) PRIMARY KEY,
    VICTIM    NUMBER(3,1),
    ATTACKER  NUMBER(3,1)
);

DESC MAN

DROP TABLE MAN; 

-- [2] ���� �����͸� IMPORT �ϱ�
-- Toad���� Database --> Import --> Import Table Data ����
-- Object Name : EXAM ������ --> NEXT
-- Excel file�� üũ �����ϰ� excel_exam.xlsx ������ �������ش� --> NEXT
-- First Row:2(����� ����), Last Row : �Է¾��ϰų� ���ϴ� �� �Է� �� --> NEXT
-- ���� ��� NEXT�� OK�� ���� �Ϸ��Ѵ�.

SELECT * 
FROM MAN
ORDER BY VICTIM, ATTACKER;

-- ������ �м��ϱ�

-- (1) �������� : �� �����ϱ� 
SELECT PROBLEM, VICTIM
FROM MAN;

-- (2) ������ : �� �����ϱ� 
SELECT PROBLEM, VICTIM, ATTACKER
FROM MAN
WHERE VICTIM >= 40;

-- (3) ������ ����� �÷��� �߰�, ����� �������� 
SELECT PROBLEM, VICTIM, ATTACKER,
    (VICTIM + ATTACKER) AS "����������", 
    ROUND((VICTIM + ATTACKER)/2) AS "������ ���"
FROM MAN
ORDER BY ROUND((VICTIM + ATTACKER)/2);

-- (4) ������ �÷� ��� ���ϱ� 
SELECT AVG(VICTIM) AS "���������",
       AVG(ATTACKER) AS "���������"
FROM MAN;

-- (5) ������ ��� ���ϱ� 
SELECT PROBLEM, AVG(VICTIM) AS "���������"
FROM MAN
GROUP BY PROBLEM;

SELECT PROBLEM, AVG(ATTACKER) AS "���������"
FROM MAN
GROUP BY PROBLEM;


------------------------------------------------------------------------------

--1 [1] TABLE �����
CREATE TABLE WOMAN (
    PROBLEM   VARCHAR2(40) PRIMARY KEY,
    VICTIM    NUMBER(3,1),
    ATTACKER  NUMBER(3,1)
);

DESC WOMAN

DROP TABLE WOMAN; 

SELECT * 
FROM WOMAN
ORDER BY VICTIM, ATTACKER;

-- ������ �м��ϱ�

-- (1) �������� : �� �����ϱ� 
SELECT PROBLEM, VICTIM
FROM WOMAN;

-- (2) ������ : �� �����ϱ� 
SELECT PROBLEM, VICTIM, ATTACKER
FROM WOMAN
WHERE VICTIM >= 40;

-- (3) ������ ����� �÷��� �߰�, ����� �������� 
SELECT PROBLEM, VICTIM, ATTACKER,
    (VICTIM + ATTACKER) AS "������ ����", 
    ROUND((VICTIM + ATTACKER)/2) AS "������ ���"
FROM WOMAN
ORDER BY ROUND((VICTIM + ATTACKER)/2);

-- (4) ������ �÷� ��� ���ϱ� 
SELECT AVG(VICTIM) AS "���������",
       AVG(ATTACKER) AS "���������"
FROM WOMAN;

-- (5) ������ ��� ���ϱ� 
SELECT PROBLEM, AVG(VICTIM) AS "���������"
FROM WOMAN
GROUP BY PROBLEM;

SELECT PROBLEM, AVG(ATTACKER) AS "���������"
FROM WOMAN
GROUP BY PROBLEM;



----------------------------------------------------------------------------

-- � ���� 

SELECT *
FROM MAN;

SELECT *
FROM WOMAN;

SELECT MAN.PROBLEM, MAN.VICTIM AS MAN_VICTIM, MAN.ATTACKER AS MAN_ATTACKER,
       WOMAN.VICTIM AS WOMAN_VICTIM, WOMAN.ATTACKER AS WOMAN_ATTACKER
    FROM MAN, WOMAN
WHERE MAN.PROBLEM = WOMAN.PROBLEM;


