CREATE DATABASE CollegeManagement;
USE CollegeManagement;

-- Create the Students Table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    dob DATE,
    gender ENUM('Male', 'Female', 'Other'),
    address TEXT
);

-- Create the Courses Table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_code VARCHAR(10),
    credits INT
);

-- Create the Faculty Table
CREATE TABLE faculty (
    faculty_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    department VARCHAR(50)
);

-- Create the Enrollments Table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (first_name, last_name, email, phone_number, dob, gender, address) VALUES
('John', 'Doe', 'johndoe@gmail.com', '1234567890', '2000-05-15', 'Male', '123 Street, City'),
('Jane', 'Smith', 'janesmith@gmail.com', '0987654321', '1999-09-12', 'Female', '456 Lane, City');

INSERT into courses (course_name, course_code, credits) VALUES
('Computer Science', 'CS101', 4),
('Mathematics', 'MATH101', 3),
('Physics', 'PHYS101', 3);


INSERT INTO faculty (first_name, last_name, email, phone_number, department) VALUES
('Alice', 'Johnson', 'alice.j@gmail.com', '7890123456', 'Computer Science'),
('Bob', 'Lee', 'bob.lee@gmail.com', '5678901234', 'Mathematics');


INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2023-01-20'),
(2, 2, '2023-01-21');