--Selecting from a Table:
	select * from Employee_Table;
	select Employee_no from Employee_Table;
	select Employee_no,Last_Name from Employee_Table;
	SELECT First_Name, Last_Name, Salary from Employee_Table;
	SELECT * FROM Employee_Table WHERE Dept_No = 400;
--Only Selecting Certain Rows:
1.	SELECT * FROM Employee_Table WHERE Salary > 50000;
2.	SELECT * FROM Employee_Table WHERE Dept_No = 300 OR Dept_No = 400;
3.	SELECT Last_Name, Salary, Dept_No FROM Employee_Table WHERE Dept_No = 400 AND Salary < 40000;
4.	SELECT Last_Name, Dept_No FROM Employee_Table WHERE Dept_No <> 400;

--Sorting Data:
1.	SELECT * FROM Employee_Table ORDER BY Last_Name;
2.	SELECT * FROM Employee_Table ORDER BY Last_Name DESC;
3.	SELECT Last_Name, Salary, Dept_No FROM Employee_Table
ORDER BY CASE WHEN Last_Name = 'Jones' THEN 1
              WHEN Last_Name = 'Harrison' THEN 2
              WHEN Last_Name = 'Smith' THEN 3
        END;
4. SELECT * FROM Employee_Table
ORDER BY CASE WHEN Last_Name = 'Jones' THEN 1
              WHEN Last_Name = 'Harrison' THEN 2
              WHEN Last_Name = 'Smith' THEN 3
        END;

--NULLS, IN, BETWEEN and LIKE - Intermediate Level 1:
1.	SELECT * FROM Student_Table WHERE Grade_Pt IS NULL;
2.	SELECT Last_Name, Class_Code FROM Student_Table WHERE Class_Code IN ('SO', 'JR');
3.	SELECT * FROM Student_Table WHERE Grade_Pt BETWEEN 2.00 AND 3.35 ORDER BY Grade_Pt;
4.	SELECT * FROM Student_Table WHERE Last_Name LIKE '%a%';
5.	SELECT * FROM Student_Table WHERE Last_Name LIKE '_a%';

--Aggregates and ALIASING - Intermediate Level 2:
1.SELECT Student_ID, Last_Name, First_Name FROM Student_Table RENAME Student_ID TO Student_Number, Last_Name TO Sir_Name, First_Name TO FIRST_GIVEN_NAME;
