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
FROM stand_user
ORDER BY MONTHS_SINCE_DEBUT DESC;

-- Question 10.
SELECT user_name AS "USER_NAME",
    stand_name AS "STAND_NAME",
    '"' || user_name || '" wields "' || stand_name || '" with power ' ||
    TO_CHAR(POWER, '999,999') || ', but dreams of ' || TO_CHAR(POWER * 3, '999,999') || '.' AS "DREAM_STATEMENT"
FROM stand_user;

-- Question 11.
SELECT stand_name
FROM stand_user
WHERE REGEXP_LIKE(stand_name,'World','i');
-- just to make sure that the output was correct
SELECT * FROM stand_user;

-- Question 12.
SELECT user_name AS "USER_NAME",
    stand_name AS "STAND_NAME",
    SOUNDEX(stand_name) AS "SOUND_CODE"
FROM stand_user
-- don't really need this but I just wanted to see the order of the soundes vals
ORDER BY SOUNDEX(stand_name) DESC;

--BONUS CHALLENGE
SELECT
    CASE
     WHEN (SELECT power FROM stand_user WHERE user_name = 'DIO') > (SELECT power FROm stand_user WHERE user_name = 'Jotaro Kujo')
     THEN 'DIO reigns supreme'
        WHEN (SELECT power FROm stand_user WHERE user_name = 'JOtato Kujo') > (SELECT power FROM stand_user WHERE user_name = 'DIO')
        THEN 'Jotaro prevails'
        ELSE 'It''s a tie!'
    END AS "The TRUE battle results!"
FROM dual;