USE college;


CREATE TABLE students7 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);


CREATE TABLE course (
    student_id INT,
    course_name VARCHAR(50)
);

-- Insert data into Students
INSERT INTO students7
VALUES
(101, 'honey'),
(102, 'bindu'),
(103, 'teju'),
(104, 'sai');


INSERT INTO course
VALUES
(101, 'C++'),
(102, 'C'),
(103, 'Python'),
(104, 'Java');


SELECT * FROM students7;

SELECT * FROM course;

SELECT students7.student_id,
       students7.name,
       course.course_name
FROM students7
RIGHT JOIN course
ON students7.student_id = course.student_id;

SELECT students7.name,
       course.course_name
FROM students7
CROSS JOIN course;
