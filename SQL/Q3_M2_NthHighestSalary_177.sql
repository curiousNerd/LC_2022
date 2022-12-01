/*
//Table: Employee
//
//
//+-------------+------+
//| Column Name | Type |
//+-------------+------+
//| id          | int  |
//| salary      | int  |
//+-------------+------+
//id is the primary key column for this table.
//Each row of this table contains information about the salary of an employee.
//
//
//
//
// Write an SQL query to report the second highest salary from the Employee tabl
//e. If there is no second highest salary, the query should report null.
//
// The query result format is in the following example.
//
//
// Example 1:
//
//
//Input:
//Employee table:
//+----+--------+
//| id | salary |
//+----+--------+
//| 1  | 100    |
//| 2  | 200    |
//| 3  | 300    |
//+----+--------+
//Output:
//+---------------------+
//| SecondHighestSalary |
//+---------------------+
//| 200                 |
//+---------------------+
//
//
// Example 2:
//
//
//Input:
//Employee table:
//+----+--------+
//| id | salary |
//+----+--------+
//| 1  | 100    |
//+----+--------+
//Output:
//+---------------------+
//| SecondHighestSalary |
//+---------------------+
//| null                |
//+---------------------+
//
// Related Topics Database
// 👍 2498 👎 791


//There is no code of Java type for this problem

*/

/*

Here we need to find the nth highest salary.
This means that the input should come from user - hence we create a function with param n
Also - Nth Highest salary intuitively means ->
    * Return nth record from top when sorted in descending order
    * This means - we can use Limit with offset
    * Offset, # records

*/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set n = n-1
  RETURN (
      select
        distinct salary
      from
        Employee
       order by salary desc
       limit N, 1

  );
END


/**
Important thing to note here is -> since we have to return nth highest salary
                                -> and we are using offset directly - we need to use "DISTINCT"
                                -> Otherwise duplicate records will give incorrect answers

*/