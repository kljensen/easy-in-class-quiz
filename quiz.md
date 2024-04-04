---
class: "MGT858 in-class quiz"
title: "SQL Joins"
date: "April 1, 2025"
---

1. What is the primary function of a primary key in a relational database table?
* To speed up the retrieval of data based on non-unique attributes.
* To ensure that all values in a column are different.
* To create a relationship between two tables.
* To uniquely identify each row in a table. (*)

2. Which statement best describes the role of a foreign key in a relational database?
* A foreign key is used to uniquely identify each row in its own table.
* A foreign key is a special key used only in rare circumstances when data is duplicated.
* A foreign key is a column (or columns) in one table that refers to the primary key columns in another table. (*)
* A foreign key ensures that data in the corresponding column is unique across both tables.

3. You want to retrieve a list of all employees and their respective department names, including employees who might not be assigned to any department. Which `JOIN` operation should you use?
* `SELECT * FROM employees CROSS JOIN departments;`
* `SELECT * FROM employees RIGHT JOIN departments ON employees.department_id = departments.department_id;`
* `SELECT * FROM employees LEFT JOIN departments ON employees.department_id = departments.department_id;` (*)
* `SELECT * FROM employees INNER JOIN departments ON employees.department_id = departments.department_id;`

4. You want to join your `products` table to `shelves` to see what needs to be restocked. Which `JOIN` operation should you use?
* `LEFT JOIN` (*)
* `RIGHT JOIN`
* `INNER JOIN`
* `CROSS JOIN`

5. You want to self-join your `teams` table for a tournament. Which `JOIN` operation should you use?
* `LEFT JOIN`
* `RIGHT JOIN`
* `INNER JOIN`
* `CROSS JOIN` (*)

6. Your `animals` table has 5 rows and your `zookeepers` table has 3 rows. How many rows are produced by `SELECT * FROM animals JOIN zookeepers WHERE true;`?
* 0
* 3
* 5
* 15 (*)

7. A 1 gig file `foo1.csv` is appended to itself to make a 2 gig file `foo2.csv`. What is true of the `SHA1` hash of `foo1.csv` and `foo2.csv`?
* They are the same.
* The hash of `foo2.csv` is the hash of `foo1.csv` appended to itself.
* They are different but of the same length. (*)
* The hash of `foo2.csv` is twice as long as the hash of `foo1.csv`. 

8. What is common about git and blockchains? 
* They both use a Merkle tree. (*)
* They both use a linked list.
* They both are implemented in Python.
* They both use SQL under the hood.

9. Which of the following `JOIN` statements looks correct?
* `SELECT * FROM employees JOIN departments ON employees.department_id = departments.department_id;` (*)
* `JOIN employees ON departments.department_id = employees.department_id SELECT *`
* `SELECT * JOIN employees FROM departments ON employees.department_id = departments.department_id;`
* `FROM employees JOIN departments ON employees.department_id = departments.department_id SELECT *`

10. Which of the following is most typically associated with joins?
* Foreign keys (*)
* Primary keys
* Indexes
* Hashes
