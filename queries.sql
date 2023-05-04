--Selezionare tutti gli insegnanti
SELECT * 
FROM teachers;

--Selezionare tutti i capi di ogni dipartimento
SELECT name, head_of_department 
FROM departments;

--Selezionare tutti i corsi di laurea magistrale
SELECT * 
FROM degrees 
WHERE level 
LIKE 'magistrale';

--Selezionare tutti gli studenti che hanno come nome Marco
SELECT * 
FROM students 
WHERE name 
LIKE 'Marco';

--Selezionare tutti i corsi(insegnamenti) che valgono più o uguale a 12 crediti
SELECT * 
FROM courses
WHERE cfu > 12;

--Selezionare tutti i corsi(insegnamenti) che valgono più di 10 crediti oppure meno di 5
SELECT * 
FROM courses
WHERE cfu > 10
OR cfu < 5;

--Selezionare tutti i corsi(insegnamenti) del primo semestre del primo anno di un qualsiasi corso di laurea
SELECT * 
FROM courses
WHERE period LIKE 'I semestre'
AND year = 1;

--Selezionare tutti i corsi(insegnamenti) che non hanno un sito web
SELECT * 
FROM courses
WHERE website IS NULL;

--Selezionare tutti gli insegnanti che hanno un numero di telefono
SELECT * 
FROM teachers
WHERE phone IS NOT NULL;

--BONUS

--Selezionare tutti gli studenti il cui nome inizia per "E".
SELECT * 
FROM students
WHERE name LIKE 'E%';

--Contare tutti gli insegnanti che iniziano con “E”.
SELECT COUNT(*)
FROM teachers
WHERE name LIKE 'E%'

--Contare tutti gli insegnanti che non hanno un numero di telefono.
SELECT COUNT(*)
FROM teachers
WHERE phone IS NULL;