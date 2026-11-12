
-- PLP Week 6 Assignment: SQL Joins and Relationships

-- Create database tables
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- Insert departments
INSERT INTO departments VALUES
(1, 'Software Engineering'),
(2, 'Data Analytics'),
(3, 'Cybersecurity');

-- Insert students
INSERT INTO students VALUES
(101, 'Angich', 1),
(102, 'Amina', 2),
(103, 'Brian', 1),
(104, 'Fatuma', 2);

-- 1. INNER JOIN
SELECT students.student_name,
       departments.department_name
FROM students
INNER JOIN departments
ON students.department_id = departments.department_id;

-- 2. LEFT JOIN
SELECT students.student_name,
       departments.department_name
FROM students
LEFT JOIN departments
ON students.department_id = departments.department_id;

-- 3. RIGHT JOIN
SELECT students.student_name,
       departments.department_name
FROM students
RIGHT JOIN departments
ON students.department_id = departments.department_id;

-- 4. Count students in each department
SELECT departments.department_name,
       COUNT(students.student_id) AS total_students
FROM departments
LEFT JOIN students
ON departments.department_id = students.department_id
GROUP BY departments.department_name;
