CREATE DATABASE Company

USE Company

CREATE TABLE employees (
  id INT PRIMARY KEY,
  name NVARCHAR(50),
  surname NVARCHAR(50),
  salary INT CHECK (salary >= 250),
  email NVARCHAR(50) UNIQUE
);

-- Sample data
INSERT INTO employees (id, name, surname, salary, email)
VALUES 
  (1, 'Rza', 'Mirzeyev', 3003, 'rza.mi@gmail.com'),
  (2, 'cavad', 'manafov', 2000, 'cavad@mail.ru'),
  (3, 'sabir', 'mirz', 700, 'sabir@gmail.com'),
  (4, 'sahin', 'bayramov', 450, 'shah1n@gmail.com'),
  (5, 'David', 'Brown', 550, 'david.brown@mail.ru')

SELECT email
FROM employees
WHERE salary BETWEEN 250 AND 500;

SELECT name, surname, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM employees) AS iscifaiz
FROM employees
WHERE salary > 1000;

SELECT AVG(salary)
FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees);

SELECT *
FROM employees
WHERE LEN(CONCAT(name, ' ', surname)) > 10;

SELECT *
FROM employees
WHERE email LIKE '%@gmail.com';





  
