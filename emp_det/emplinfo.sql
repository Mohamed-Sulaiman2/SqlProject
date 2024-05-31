create database office;

use office;

create table empl (Emp_ID int,F_name varchar(30),L_name varchar(30),Salary int,Location varchar(40),Email varchar(50),Dept_ID int);


insert into empl values (401,"Mohamed","Munaseer",20000,"Tirunelveli","mona401@gmail.com",441101),
(402,"Mohamed","Baasil",25000,"Trichy","baasilbas402@gmail.com",441102),
(403,"Mohamed","Sulaiman",30000,"Tirunelveli","sulai403@gmail.com",441103),
(404,"Mohamed","Sharik",20000,"Tirunelveli","sharikmd404@gmail.com",441104),
(405,"Mohamed","Bayas",25000,"Trichy","mdbayas405@gmail.com",441105),
(406,"Mohamed","Rahumathulla",22000,"Tirunelveli","rahumathulla406@gmail.com",441106),
(407,"Mohamed","Ashfaq",40000,"Trichy","ashfaqash407@gmail.com",441103),
(408,"Mohamed","Saibullah",35000,"Kanyakumari","saib408@gmail.com",441105),
(409,"Mohamed","Riyas",35000,"Tirunelveli","riyaskhan409@gmail.com",441102),
(410,"Mohamed","Irfan",22000,"Trichy","irfani410@gmail.com",441104),
(411,"Mohamed","Ishaq",40000,"Kanyakumari","isha411@gmail.com",441101),
(412,"Mohamed","Muzammil",22000,"Trichy","muzammilmuz412@gmail.com",441103),
(413,"Mohamed","Mujeeb",18000,"Madurai","mujeeb413@gmail.com",441103),
(414,"Mohamed","Nagoor",60000,"Madurai","nagoor414@gmail.com",441105),
(415,"Mohamed","Nazir",18000,"Kanyakumari","nazzirr415@gmail.com",441106),
(416,"Mohamed","Jabir",60000,"Madurai","jabir416@gmail.com",441106),
(417,"Mohamed","Zubair",30000,"Kanyakumari","zubair417@gmail.com",441102),
(419, "Mohamed", "Salman", 30000, "Mumbai", "salmani403@gmail.com", 441101),
(420, "Priya", "Patel", 35000, "New Delhi", "priya.patel@example.com", 441102),
(421, "Rahul", "Sharma", 32000, "Bangalore", "rahul.sharma@example.com", 441103),
(422, "Aishwarya", "Singh", 40000, "Chennai", "aishwarya.singh@example.com", 441104),
(423, "Vivek", "Kumar", 38000, "Kolkata", "vivek.kumar@example.com", 441105),
(424, "Anjali", "Gupta", 33000, "Hyderabad", "anjali.gupta@example.com", 441106),
(425, "Sandeep", "Verma", 37000, "Pune", "sandeep.verma@example.com", 441101),
(426, "Neha", "Yadav", 34000, "Ahmedabad", "neha.yadav@example.com", 441102),
(427, "Rajesh", "Rao", 36000, "Surat", "rajesh.rao@example.com", 441103),
(428, "Shreya", "Mishra", 31000, "Jaipur", "shreya.mishra@example.com", 441104),
(429, "Arun", "Shah", 39000, "Lucknow", "arun.shah@example.com", 441105),
(430, "Pooja", "Reddy", 37000, "Kanpur", "pooja.reddy@example.com", 441106),
(431, "Kiran", "Jain", 32000, "Nagpur", "kiran.jain@example.com", 441101),
(432, "Rohit", "Deshpande", 38000, "Indore", "rohit.deshpande@example.com", 441102),
(433, "Neha", "Pillai", 35000, "Thane", "neha.pillai@example.com", 441103),
(434, "Vikram", "Menon", 33000, "Bhopal", "vikram.menon@example.com", 441104),
(435, "Ananya", "Chatterjee", 39000, "Visakhapatnam", "ananya.chatterjee@example.com", 441105),
(436, "Sachin", "Nair", 31000, "Patna", "sachin.nair@example.com", 441106),
(437, "Aditi", "Kulkarni", 40000, "Ludhiana", "aditi.kulkarni@example.com", 441101),
(438, "Pranav", "Dube", 38000, "Agra", "pranav.dube@example.com", 441102);

CREATE TABLE dep (
    depid INT PRIMARY KEY,
    dep_name VARCHAR(50),
    manager_id INT,
    manager_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO dep (depid, dep_name, manager_id, manager_name, location) VALUES
(441101, 'Sales', 401, 'Ayesha Khan', 'Tirunelveli'),
(441102, 'Marketing', 402, 'Ravi Kumar', 'Trichy'),
(441103, 'HR', 403, 'Sana Ali', 'Tirunelveli'),
(441104, 'Finance', 404, 'Anil Mehta', 'Tirunelveli'),
(441105, 'IT', 405, 'Karthik Reddy', 'Trichy'),
(441106, 'Operations', 406, 'Pooja Sharma', 'Tirunelveli'),
(441107, 'Customer Support', 707, 'Soorah Mehta', 'Chennai'),
(441108, 'Research and Development', 203, 'Srinivasan', 'Bangalore');

CREATE TABLE inc (
    emp_id INT PRIMARY KEY,
    old_salary DECIMAL(10, 2),
    increment_amount DECIMAL(10, 2),
    new_salary DECIMAL(10, 2)
);

INSERT INTO inc (emp_id, old_salary, increment_amount, new_salary) VALUES
(401, 20000, 2000, 22000),
(402, 25000, 2500, 27500),
(403, 30000, 3000, 33000),
(404, 20000, 2000, 22000),
(405, 25000, 2500, 27500),
(406, 22000, 2200, 24200),
(407, 40000, 4000, 44000),
(408, 35000, 3500, 38500),
(409, 35000, 3500, 38500),
(410, 22000, 2200, 24200),
(411, 40000, 4000, 44000),
(412, 22000, 2200, 24200),
(413, 18000, 1800, 19800),
(414, 60000, 6000, 66000),
(415, 18000, 1800, 19800),
(416, 60000, 6000, 66000),
(417, 30000, 3000, 33000),
(419, 30000, 3000, 33000),
(420, 35000, 3500, 38500),
(421, 32000, 3200, 35200),
(422, 40000, 4000, 44000),
(423, 38000, 3800, 41800),
(424, 33000, 3300, 36300),
(425, 37000, 3700, 40700),
(426, 34000, 3400, 37400),
(427, 36000, 3600, 39600),
(428, 31000, 3100, 34100),
(429, 39000, 3900, 42900),
(430, 37000, 3700, 40700),
(431, 32000, 3200, 35200),
(432, 38000, 3800, 41800),
(433, 35000, 3500, 38500),
(434, 33000, 3300, 36300),
(435, 39000, 3900, 42900),
(436, 31000, 3100, 34100),
(437, 40000, 4000, 44000),
(438, 38000, 3800, 41800);


select * from empl;

select * from dep;

select * from inc;

-- CREATING COPY OF ALL THE TABLE DATA
# EMPL TABLE
create table emplbup select * from empl;
# DEP TABLE
create table depbup select * from dep;
# INC TABLE
create table incbup select * from inc;

-- CREATING VIEW FOR EMPL TABLE

create view emplview as select * from empl;

-- WORKING WITH INDEX
show index from empl;

create index id on empl(emp_id);

-- WORKING WITH PROCEDURES

delimiter //
create procedure `office_info`()
begin
select * from dep where location in ('Tirunelveli');
select location,count(location) as TOTAL from empl group by location;
select salary,location,count(*) as Total from empl group by salary,location;
end //
delimiter ;

-- WORKING WITH TRIGGER

DELIMITER //
CREATE TRIGGER after_increment_update
before UPDATE ON inc
FOR EACH ROW
BEGIN
    -- Update the new_salary in the inc table
    SET NEW.new_salary = NEW.old_salary + NEW.increment_amount;

    -- Update the salary in the empl table
    UPDATE empl
    SET salary = NEW.new_salary
    WHERE emp_id = NEW.emp_id;
END//
DELIMITER ;

update inc set increment_amount = 3000 where emp_id = 401;

select * from inc;

select * from empl;

-- SECOND HIGHEST SALARY

select max(salary) as second_highest_salary from empl where salary < (
select max(salary) from empl);