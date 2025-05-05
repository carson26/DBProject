-- #1. Fine Calculation: Calculate the total fines owed by each member, considering overdue books and a daily fine rate (e.g., $0.25 per day).
SELECT 
    c.ClientID,
    c.Name,
    SUM(
        CASE
            WHEN lt.ReturnDate IS NULL AND lt.DueDate < CURDATE() THEN DATEDIFF(CURDATE(), lt.DueDate) * 0.25
            WHEN lt.ReturnDate > lt.DueDate THEN DATEDIFF(lt.ReturnDate, lt.DueDate) * 0.25
            ELSE 0
        END
    ) AS TotalFine
FROM CLIENT c
JOIN LOAN_TRANSACTION lt ON c.ClientID = lt.ClientID
GROUP BY c.ClientID, c.Name;

-- #2. Book Availability: Display a list of all available books (not currently borrowed) within a specific genre.
SELECT i.ItemID, i.Title, b.Author, b.Genre, i.AvailabilityStatus
FROM ITEM i
JOIN BOOK b ON i.ItemID = b.ItemID
WHERE i.AvailabilityStatus='available' AND b.Genre='Fiction';

-- #3. Frequent Borrowers of a Specific Genre: Identify the members who have borrowed the most books in a particular genre (e.g., "Mystery") in the last year.
SELECT c.ClientID, c.Name, COUNT(lt.BorrowDate) AS TotalBorrowed, b.Genre
FROM CLIENT c
JOIN LOAN_TRANSACTION lt on c.ClientID = lt.ClientID
JOIN BOOK b on lt.ItemID = b.ItemID
WHERE b.Genre='Fiction'
GROUP BY c.ClientID;

-- #4. Books due Soon: Generate a report of all books due within the next week, sorted by due date.
SELECT lt.TransactionID, c.Name AS BorrowerName, i.Title, lt.DueDate
FROM LOAN_TRANSACTION lt
JOIN CLIENT c ON lt.ClientID = c.ClientID
JOIN ITEM i ON lt.ItemID = i.ItemID
WHERE lt.ReturnDate IS NULL AND lt.DueDate BETWEEN CURDATE() AND CURDATE() + INTERVAL 7 DAY
ORDER BY lt.DueDate ASC;

-- #5. Members with Overdue Books: List all members who currently have at least one overdue book, along with the titles of the overdue books.
SELECT c.ClientID, c.Name, i.Title, lt.DueDate
FROM CLIENT c
JOIN LOAN_TRANSACTION lt ON c.ClientID = lt.ClientID
JOIN ITEM i ON lt.ItemID = i.ItemID
WHERE lt.ReturnDate IS NULL AND lt.DueDate < CURDATE();

-- #6. Average Borrowing Time: Calculate the average number of days members borrow books for a specific genre.
SELECT b.Genre, AVG(DATEDIFF(lt.ReturnDate, lt.BorrowDate)) AS AverageBorrowDays
FROM LOAN_TRANSACTION lt
JOIN BOOK b ON lt.ItemID = b.ItemID
WHERE lt.ReturnDate IS NOT NULL AND b.Genre = 'Fiction'
GROUP BY b.Genre;

-- #7. Most Popular Author in the Last Month: Determine the author whose books have been borrowed the most in the last month.
SELECT b.Author, COUNT(*) AS BorrowCount
FROM LOAN_TRANSACTION lt
JOIN BOOK b ON lt.ItemID = b.ItemID
WHERE lt.BorrowDate >= CURDATE() - INTERVAL 1 MONTH
GROUP BY b.Author
ORDER BY BorrowCount DESC
LIMIT 1;