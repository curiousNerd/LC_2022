/**
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
The aim of the question is to find the second highest salary where the
 => result set should return null if there is no 2nd highest salary
*/


-- This query gives correct answer [gives null in case of no records]
select
     max(salary) as SecondHighestSalary
from
    Employee
where salary not in
                    (
                    select
                    max(salary)
                    from
                    Employee
                    )

-- This query gives Incorrect answer [gives empty resultset in case of no records]

select
     salary as SecondHighestSalary
from
    Employee
where salary not in
                    (
                    select
                    max(salary)
                    from
                    Employee
                    )
order by salary desc
limit 1