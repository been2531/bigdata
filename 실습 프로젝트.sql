-- IMPORT_EXCEL.SQL
-- excel_exam.xlsx ������ import�Ͽ� EXAM ���̺� �����ϱ�

--1 [1] TABLE �����
CREATE TABLE MARRIED_COUPLE_MAN (
    PROBLEM   VARCHAR2(40) PRIMARY KEY,
    VICTIM    NUMBER(3,1),
    ATTACKER  NUMBER(3,1)
);

DESC MARRIED_COUPLE_MAN

DROP TABLE MARRIED_COUPLE_MAN; 

-- [2] ���� �����͸� IMPORT �ϱ�
-- Toad���� Database --> Import --> Import Table Data ����
-- Object Name : EXAM ������ --> NEXT
-- Excel file�� üũ �����ϰ� excel_exam.xlsx ������ �������ش� --> NEXT
-- First Row:2(����� ����), Last Row : �Է¾��ϰų� ���ϴ� �� �Է� �� --> NEXT
-- ���� ��� NEXT�� OK�� ���� �Ϸ��Ѵ�.

SELECT * 
FROM MARRIED_COUPLE_MAN
ORDER BY VICTIM, ATTACKER;

-- ������ �м��ϱ�

-- (1) �������� : �� �����ϱ� 
SELECT PROBLEM, VICTIM
FROM MARRIED_COUPLE_MAN;

-- (2) ������ : �� �����ϱ� 
SELECT PROBLEM, VICTIM, ATTACKER
FROM MARRIED_COUPLE_MAN
WHERE VICTIM >= 40;

-- (3) ������ ����� �÷��� �߰�, ����� �������� 
SELECT PROBLEM, VICTIM, ATTACKER,
    (VICTIM + ATTACKER) AS "����", 
    ROUND((VICTIM + ATTACKER)/2) AS "���"
FROM MARRIED_COUPLE_MAN
ORDER BY ROUND((VICTIM + ATTACKER)/2);

-- (4) ������ �÷� ��� ���ϱ� 
SELECT AVG(VICTIM) AS "���������",
       AVG(ATTACKER) AS "���������"
FROM MARRIED_COUPLE_MAN;

-- (5) ������ ��� ���ϱ� 
SELECT PROBLEM, AVG(VICTIM) AS "���������"
FROM MARRIED_COUPLE_MAN
GROUP BY PROBLEM;

SELECT PROBLEM, AVG(ATTACKER) AS "���������"
FROM MARRIED_COUPLE_MAN
GROUP BY PROBLEM;


------------------------------------------------------------------------------

--1 [1] TABLE �����
CREATE TABLE MARRIED_COUPLE_WOMAN (
    PROBLEM   VARCHAR2(40) PRIMARY KEY,
    VICTIM    NUMBER(3,1),
    ATTACKER  NUMBER(3,1)
);

DESC MARRIED_COUPLE_WOMAN

DROP TABLE MARRIED_COUPLE_WOMAN; 

SELECT * 
FROM MARRIED_COUPLE_WOMAN
ORDER BY VICTIM, ATTACKER;

-- ������ �м��ϱ�

-- (1) �������� : �� �����ϱ� 
SELECT PROBLEM, VICTIM
FROM MARRIED_COUPLE_WOMAN;

-- (2) ������ : �� �����ϱ� 
SELECT PROBLEM, VICTIM, ATTACKER
FROM MARRIED_COUPLE_WOMAN
WHERE VICTIM >= 40;

-- (3) ������ ����� �÷��� �߰�, ����� �������� 
SELECT PROBLEM, VICTIM, ATTACKER,
    (VICTIM + ATTACKER) AS "����", 
    ROUND((VICTIM + ATTACKER)/2) AS "���"
FROM MARRIED_COUPLE_WOMAN
ORDER BY ROUND((VICTIM + ATTACKER)/2);

-- (4) ������ �÷� ��� ���ϱ� 
SELECT AVG(VICTIM) AS "���������",
       AVG(ATTACKER) AS "���������"
FROM MARRIED_COUPLE_WOMAN;

-- (5) ������ ��� ���ϱ� 
SELECT PROBLEM, AVG(VICTIM) AS "���������"
FROM MARRIED_COUPLE_WOMAN
GROUP BY PROBLEM;

SELECT PROBLEM, AVG(ATTACKER) AS "���������"
FROM MARRIED_COUPLE_MAN
GROUP BY PROBLEM;
