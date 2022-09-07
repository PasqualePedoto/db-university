-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT 
`degrees`.`name` AS 'degree_course',
`students`.`name` AS 'nome_studente' , 
`students`.`surname` AS 'cognome_studente' 
FROM `degrees` 
JOIN `students` 
ON `students`.`degree_id` = `degrees`.`id` 
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze

SELECT 
`degrees`.*, 
`departments`.`name` AS 'department' 
FROM `departments` 
JOIN `degrees` 
ON `degrees`.`department_id` = `departments`.`id` 
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)



-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine 
-- alfabetico per cognome e nome

SELECT 
`courses`.*, 
`teachers`.name AS 'teacher_name', 
`teachers`.surname AS 'teacher_surname', 
`teachers`.id AS 'identify' 
FROM `courses` 
JOIN `course_teacher` 
ON `course_teacher`.`course_id` = `courses`.`id` 
JOIN `teachers` 
ON `teachers`.`id` = `course_teacher`.`teacher_id` 
WHERE `teachers`.`id` = 44;

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti



-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)



-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami