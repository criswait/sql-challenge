-- Employees Table
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex CHAR(1),
    hire_date DATE
);

-- Titles Table
CREATE TABLE Titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

-- Departments Table
CREATE TABLE Departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

-- Department Manager Table
CREATE TABLE DepartmentManager (
    dept_no VARCHAR,
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Department Employee Table
CREATE TABLE DepartmentEmployee (
    emp_no INT,
    dept_no VARCHAR,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- Salaries Table
CREATE TABLE Salaries (
    emp_no INT,
    salary DECIMAL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Review if imports work correctly
SELECT * FROM Employees;
SELECT * FROM titles;
SELECT * FROM departments;
SELECT * FROM DepartmentManager;
SELECT * FROM DepartmentEmployee;
SELECT * FROM Salaries;

