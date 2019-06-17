CREATE DATABASE Employee;

USE Employee;

CREATE TABLE Roles
(
role_id	INT NOT NULL,
role_name	VARCHAR(50) NOT NULL,
created_at			DATETIME NOT NULL,
updated_at			DATETIME NOT NULL,
active			BOOLEAN NOT NULL DEFAULT TRUE,
CONSTRAINT UC_Departments UNIQUE (role_id, role_name),
PRIMARY KEY (role_id)
);

CREATE TABLE Statuses
(
status_id	INT NOT NULL,
status_name	VARCHAR(50) NOT NULL,
created_at			DATETIME NOT NULL,
updated_at			DATETIME NOT NULL,
CONSTRAINT UC_Departments UNIQUE (status_id, status_name),
PRIMARY KEY (status_id)
);

CREATE TABLE Departments
(
department_id		INT NOT NULL,
department_name		VARCHAR(50) NOT NULL,
department_phone	VARCHAR(50) NOT NULL,
department_address	VARCHAR(255) NOT NULL,
created_at			DATETIME NOT NULL,
updated_at			DATETIME NOT NULL,
active			BOOLEAN NOT NULL DEFAULT TRUE,
CONSTRAINT UC_Departments UNIQUE (department_id, department_name),
PRIMARY KEY (department_id)
);

CREATE TABLE Positions
(
position_id		INT NOT NULL,
position_name	VARCHAR(50) NOT NULL,
created_at			DATETIME NOT NULL,
updated_at			DATETIME NOT NULL,
active			BOOLEAN NOT NULL,
CONSTRAINT UC_Positions UNIQUE (position_id, position_name),
PRIMARY KEY (position_id)
);

CREATE TABLE Employees
(
employee_id		INT NOT NULL,
employee_name	VARCHAR(50) NOT NULL,
birthday		DATE NOT NULL,
address			VARCHAR(255) NOT NULL,
phone			VARCHAR(11) NOT NULL,
email			VARCHAR(100) NOT NULL,
password		VARCHAR(255) NOT NULL,
started_day		DATE NOT NULL,
status_id		INT NOT NULL DEFAULT 1,
role_id			INT NOT NULL DEFAULT 0,
created_at		DATETIME NOT NULL,
updated_at		DATETIME NOT NULL,
department_id	INT NOT NULL,
position_id		INT NOT NULL,
CONSTRAINT UC_Employees UNIQUE (employee_id, phone, email),
PRIMARY KEY (employee_id),
FOREIGN KEY (role_id) REFERENCES Roles(role_id),
FOREIGN KEY (status_id) REFERENCES Statuses(status_id),
FOREIGN KEY (department_id) REFERENCES Departments(department_id),
FOREIGN KEY (position_id) REFERENCES Positions(position_id)
);