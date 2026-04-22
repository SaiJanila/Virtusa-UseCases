CREATE TABLE Students (
stud_id INT PRIMARY KEY,
stud_name VARCHAR(50)
);

CREATE TABLE Books (
Book_id INT PRIMARY KEY,
Title VARCHAR(100),
Category VARCHAR(50)
);

CREATE TABLE IssuedBooks (
Issue_id INT PRIMARY KEY,
stud_id INT,
Book_id INT,
Issue_date DATE,
Return_date DATE,
FOREIGN KEY (stud_id) REFERENCES Students (stud_id),
FOREIGN KEY (Book_id) REFERENCES Books (Book_id)
);

INSERT INTO Students VALUES
(1, 'Janila'),
(2, 'Bhavana'),
(3, 'Sagarika');

INSERT INTO Books VALUES
(101, 'Java Guide','Coding'),
(102, 'Python Basics', 'Coding'),
(103, 'Economics', 'Social'),
(104, 'Physics', 'Science');

INSERT INTO IssuedBooks VALUES
(1,1,101,'2026-03-01', NULL),
(2,2,102,'2026-04-10', NULL),
(3,3,103,'2026-03-15', '2026-03-20'),
(4,1,104,'2026-04-01', NULL);

SELECT s.stud_name, b.Title, i.Issue_date FROM IssuedBooks i
JOIN Students s ON i.stud_id = s.stud_id 
JOIN Books b ON i.Book_id = b.Book_id
WHERE i.Return_date IS NULL
AND DATEDIFF(CURDATE(), i.Issue_date) > 14;

SELECT b.Category, COUNT(*) AS TotalBorrowed
FROM IssuedBooks i
JOIN Books b on i.Book_id = b.Book_id
GROUP BY b.Category
ORDER BY TotalBorrowed DESC;


SET SQL_SAFE_UPDATES =0;

DELETE FROM Students
WHERE stud_id NOT IN (
SELECT DISTINCT stud_id
FROM IssuedBooks
WHERE Issue_date >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR)
);

SET SQL_SAFE_UPDATES =1;

