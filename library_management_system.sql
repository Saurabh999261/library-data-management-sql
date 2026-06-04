-- ============================================================
-- PROJECT  : Library Data Management System
-- AUTHOR   : Saurabh Mekhe
-- TOOL     : MySQL Workbench
-- PURPOSE  : Analytical SQL queries for library operations
-- ============================================================


-- ============================================================
-- SECTION 1 : Books Not Loaned Out in Last 6 Months
-- ============================================================

SELECT B.BookID, title, loandate
FROM books B
LEFT JOIN loans
ON B.BookID = loans.BookID
AND LoanDate >= DATE_SUB('2024-12-31', INTERVAL 6 MONTH)
WHERE loandate IS NULL;


-- ============================================================
-- SECTION 2 : Top 5 Members by Number of Books Borrowed in Last Year
-- ============================================================

SELECT M.MemberID, firstname, lastname, COUNT(L.LoanID)
FROM members M
INNER JOIN loans L
ON M.MemberID = L.MemberID
AND LoanDate >= DATE_SUB('2024-12-31', INTERVAL 1 YEAR)
GROUP BY M.MemberID
ORDER BY COUNT(L.LoanID) DESC
LIMIT 5;


-- ============================================================
-- SECTION 3 : Overdue Books Report
-- ============================================================

SELECT B.title, M.firstname, M.lastname, L.MemberID, L.duedate,
       DATEDIFF(CURRENT_DATE, DueDate) AS overdue, L.returned
FROM loans L
LEFT JOIN members M ON L.MemberID = M.MemberID
LEFT JOIN books B ON L.bookid = B.bookid
WHERE l.returndate IS NULL
ORDER BY L.MemberID ASC;


-- ============================================================
-- SECTION 4 : Top 3 Most Borrowed Categories
-- ============================================================

SELECT categoryname, COUNT(b.bookid)
FROM categories C
INNER JOIN bookcategories B ON C.CategoryID = B.CategoryID
INNER JOIN loans L ON B.bookid = L.bookid
GROUP BY categoryname
ORDER BY COUNT(bookid) DESC
LIMIT 3;


-- ============================================================
-- SECTION 5 : Average Number of Days Books Are Kept
-- ============================================================

SELECT AVG(DATEDIFF(ReturnDate, loandate))
FROM loans
WHERE ReturnDate IS NOT NULL;


-- ============================================================
-- SECTION 6 : Percentage of Books Loaned Out per Category
-- ============================================================

SELECT genre, COUNT(bookid),
ROUND(COUNT(bookid) * 100.0 / (SELECT COUNT(*) FROM books), 2) AS percentage
FROM books
GROUP BY genre;


-- ============================================================
-- SECTION 7 : Total Number of Loans and Reservations per Member
-- ============================================================

SELECT M.memberid, COUNT(L.loanID), COUNT(R.reservationID)
FROM members M
LEFT JOIN loans L ON M.MemberID = L.MemberID
LEFT JOIN reservations R ON R.MemberID = L.MemberID
GROUP BY M.memberid;


-- ============================================================
-- SECTION 8 : Members Who Borrowed Books by Same Author More Than Once
-- ============================================================

SELECT FirstName, LastName, AuthorID, COUNT(B.bookid)
FROM members M
INNER JOIN loans L ON M.MemberID = L.MemberID
INNER JOIN books B ON L.BookID = B.BookID
GROUP BY FirstName, LastName, authorid
HAVING COUNT(B.bookid) > 1;


-- ============================================================
-- SECTION 9 : Members Who Borrowed and Reserved the Same Book
-- ============================================================

SELECT M.memberid, L.BookID
FROM members M
INNER JOIN loans L ON M.MemberID = L.MemberID
INNER JOIN reservations R
ON R.MemberID = L.MemberID
AND R.bookid = L.BookID
GROUP BY M.memberid, L.bookid;


-- ============================================================
-- SECTION 10 : Books Loaned but Never Returned
-- ============================================================

SELECT bookid, LoanDate, ReturnDate
FROM loans
WHERE returndate IS NULL
ORDER BY bookid;


-- ============================================================
-- SECTION 11 : Top 5 Authors with Most Borrowed Books
-- ============================================================

SELECT A.AuthorID, FirstName, LastName, COUNT(*)
FROM authors A
INNER JOIN books B ON A.AuthorID = B.AuthorID
INNER JOIN loans L ON B.BookID = L.BookID
GROUP BY A.AuthorID, FirstName, LastName
ORDER BY COUNT(*) DESC
LIMIT 5;


-- ============================================================
-- SECTION 12 : Members with Reservations but No Loans in Last Year
-- ============================================================

SELECT R.memberid, firstname, lastname
FROM members M
INNER JOIN reservations R ON M.MemberID = R.MemberID
INNER JOIN loans L
ON L.BookID = R.BookID
AND LoanDate >= DATE_SUB('2024-12-31', INTERVAL 1 YEAR)
WHERE loandate IS NULL;


-- ============================================================
-- END OF PROJECT
-- ============================================================
