PRIMARY KEY
---A primary key is a column or a set of columns that uniquely identifies each row in a table.
--It ensures that there are no duplicate rows in the table and serves as a unique identifier for each record.
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);


FOREIGN KEY (FK):
--A foreign key is a column or a set of columns in a table that establishes a link between data in two tables.
--It ensures referential integrity by enforcing a link between the data in the child table (containing the foreign key) and the parent table (containing the primary key).
CREATE TABLE grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
