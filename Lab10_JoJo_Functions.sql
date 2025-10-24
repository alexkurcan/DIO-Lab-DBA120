-- Question 1.
SELECT stand_name AS "STAND_NAME",
    UPPER(STAND_NAME) AS "STAND_UPPER",
    LOWER(STAND_NAME) AS "STAND_LOWER",
    INITCAP(STAND_NAME) AS "STAND_TITLE"
FROM STAND_USER;

-- Question 2.
SELECT stand_name AS "USER_NAME",
    catchphrase AS "CATCHPHRASE",
    LENGTH(catchphrase) AS "PHRASE_LENGTH"
FROM stand_user
ORDER BY LENGTH(catchphrase) DESC;

-- Question 3.
SELECT stand_name AS "USER_NAME",
    SUBSTR(stand_name, 1, 8) AS "STAND_SHORT"
FROM stand_user;

-- Question 4.
SELECT stand_name AS "STAND_NAME",
    INSTR(stand_name, 'World') "WORLD_POSITION"
FROM stand_user;

-- Question 5.
SELECT stand_name AS "USER_NAME",
    LPAD(power, 8, '*') AS "POWER_BAR"
FROM stand_user;

-- Question 6.
SELECT user_name AS "USER_NAME",
    power AS "POWER",
    ROUND(power) AS "ROUNDED_POWER",
    TRUNC(power) AS "TRUNCATED_POWER",
    MOD(power, 300) AS "POWER_MOD_300"
FROM stand_user;

-- Question 7.
SELECT user_name AS "USER_NAME",
    NVL(TO_CHAR(PRECISION), 'Unknown') AS "PRECISION_STATUS"
FROM stand_user;

-- Question 8.
SELECT user_name AS "USER_NAME",
    debut_date AS "DEBUT_DATE",
    NEXT_DAY(ADD_MONTHS(DEBUT_DATE, 6), 'MONDAY') "TRAINING_REVIEW"
FROM stand_user;

-- Question 9.
SELECT user_name AS "USER_NAME",
    ROUND(MONTHS_BETWEEN(SYSDATE, debut_date)) "MONTHS_SINCE_DEBUT"
FROM stand_user;

-- Question 10.
