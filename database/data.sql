-- Populate MEMBERSHIP table with diverse membership types
INSERT INTO MEMBERSHIP (MembershipType, Description, BorrowingLimit, FeeStructure) VALUES
('Standard', 'Regular membership with standard privileges', 5, 0.25),
('Premium', 'Enhanced membership with additional privileges', 10, 0.15),
('Student', 'Special rate for students with valid ID', 7, 0.10),
('Senior', 'Special rate for seniors aged 65+', 7, 0.05),
('Staff', 'Library staff membership', 15, 0.00),
('Corporate', 'Membership for corporate partners', 20, 0.20),
('Family', 'Shared membership for families', 15, 0.12),
('Children', 'Special membership for children under 12', 3, 0.05);

-- Populate CLIENT table with diverse patrons
INSERT INTO CLIENT (Name, PhoneNumber, Email, MembershipType, AccountStatus) VALUES
('John Smith', '555-123-4567', 'john.smith@email.com', 'Standard', 'active'),
('Emily Johnson', '555-234-5678', 'emily.j@email.com', 'Premium', 'active'),
('Michael Brown', '555-345-6789', 'mbrown@email.com', 'Student', 'active'),
('Sarah Wilson', '555-456-7890', 'swilson@email.com', 'Senior', 'active'),
('David Thompson', '555-567-8901', 'dthompson@email.com', 'Standard', 'suspended'),
('Jennifer Garcia', '555-678-9012', 'jgarcia@email.com', 'Premium', 'active'),
('Robert Martinez', '555-789-0123', 'rmartinez@email.com', 'Student', 'active'),
('Lisa Anderson', '555-890-1234', 'landerson@email.com', 'Standard', 'active'),
('James Taylor', '555-901-2345', 'jtaylor@email.com', 'Staff', 'active'),
('Patricia Rodriguez', '555-012-3456', 'prodriguez@email.com', 'Senior', 'active'),
('William Davis', '555-123-7890', 'wdavis@email.com', 'Corporate', 'active'),
('Elizabeth Clark', '555-234-8901', 'eclark@email.com', 'Family', 'active'),
('Thomas White', '555-345-9012', 'twhite@email.com', 'Standard', 'active'),
('Mary Harris', '555-456-0123', 'mharris@email.com', 'Premium', 'active'),
('Christopher Lee', '555-567-1234', 'clee@email.com', 'Student', 'suspended'),
('Jessica Young', '555-678-2345', 'jyoung@email.com', 'Senior', 'active'),
('Daniel Allen', '555-789-3456', 'dallen@email.com', 'Staff', 'active'),
('Amanda Scott', '555-890-4567', 'ascott@email.com', 'Corporate', 'active'),
('Matthew King', '555-901-5678', 'mking@email.com', 'Family', 'active'),
('Laura Nelson', '555-012-6789', 'lnelson@email.com', 'Children', 'active'),
('Anthony Parker', '555-123-7890', 'aparker@email.com', 'Standard', 'active'),
('Sophia Carter', '555-234-8901', 'scarter@email.com', 'Premium', 'closed'),
('Kevin Phillips', '555-345-9012', 'kphillips@email.com', 'Student', 'active'),
('Rachel Evans', '555-456-0123', 'revans@email.com', 'Senior', 'active'),
('Joseph Turner', '555-567-1234', 'jturner@email.com', 'Family', 'active');

-- Populate ITEM and BOOK tables - Fiction
INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'The Great Gatsby', '1925-04-10', 'available');
SET @book1_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book1_id, '9780743273565', 'F. Scott Fitzgerald', 'Fiction');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'To Kill a Mockingbird', '1960-07-11', 'borrowed');
SET @book2_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book2_id, '9780061120084', 'Harper Lee', 'Fiction');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'The Hobbit', '1937-09-21', 'available');
SET @book3_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book3_id, '9780547928227', 'J.R.R. Tolkien', 'Fantasy');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'The Lord of the Rings', '1954-07-29', 'borrowed');
SET @book4_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book4_id, '9780618640157', 'J.R.R. Tolkien', 'Fantasy');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'Pride and Prejudice', '1813-01-28', 'available');
SET @book5_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book5_id, '9780141439518', 'Jane Austen', 'Classic');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'Nineteen Eighty-Four', '1949-06-08', 'available');
SET @book6_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book6_id, '9780451524935', 'George Orwell', 'Dystopian');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'The Catcher in the Rye', '1951-07-16', 'borrowed');
SET @book7_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book7_id, '9780316769488', 'J.D. Salinger', 'Fiction');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'The Alchemist', '1988-01-01', 'reserved');
SET @book8_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book8_id, '9780062315007', 'Paulo Coelho', 'Fiction');

-- Populate ITEM and BOOK tables - Non-Fiction
INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'Principles of Database Systems', '2019-03-15', 'reserved');
SET @book9_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book9_id, '9780136124399', 'Abraham Silberschatz', 'Computer Science');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'Becoming', '2018-11-13', 'available');
SET @book10_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book10_id, '9781524763138', 'Michelle Obama', 'Biography');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'Sapiens: A Brief History of Humankind', '2014-02-10', 'available');
SET @book11_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book11_id, '9780062316097', 'Yuval Noah Harari', 'History');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'A Brief History of Time', '1988-03-01', 'borrowed');
SET @book12_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book12_id, '9780553380163', 'Stephen Hawking', 'Science');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'Educated: A Memoir', '2018-02-20', 'available');
SET @book13_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book13_id, '9780399590504', 'Tara Westover', 'Memoir');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'The Art of War', '1910-01-01', 'available');
SET @book14_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book14_id, '9781590302255', 'Sun Tzu', 'Philosophy');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Book', 'The 7 Habits of Highly Effective People', '1989-08-15', 'borrowed');
SET @book15_id = LAST_INSERT_ID();
INSERT INTO BOOK (ItemID, ISBN, Author, Genre) VALUES
(@book15_id, '9780743269513', 'Stephen R. Covey', 'Self-Help');

-- Populate ITEM and DIGITAL_MEDIA tables - Movies
INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'Inception', '2010-07-16', 'available');
SET @media1_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media1_id, 'Christopher Nolan', 'DVD');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'The Social Network', '2010-10-01', 'borrowed');
SET @media2_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media2_id, 'David Fincher', 'Blu-ray');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'Interstellar', '2014-11-07', 'available');
SET @media3_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media3_id, 'Christopher Nolan', 'Blu-ray');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'The Godfather', '1972-03-24', 'borrowed');
SET @media4_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media4_id, 'Francis Ford Coppola', 'DVD');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'Pulp Fiction', '1994-10-14', 'available');
SET @media5_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media5_id, 'Quentin Tarantino', 'DVD');

-- Populate ITEM and DIGITAL_MEDIA tables - TV Series
INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'The Office: Complete Series', '2013-09-03', 'available');
SET @media6_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media6_id, 'Greg Daniels', 'DVD');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'Breaking Bad: Complete Series', '2013-11-26', 'borrowed');
SET @media7_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media7_id, 'Vince Gilligan', 'DVD');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'Game of Thrones: Season 1', '2012-03-06', 'reserved');
SET @media8_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media8_id, 'David Benioff, D.B. Weiss', 'Blu-ray');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'Stranger Things: Season 1', '2017-10-17', 'available');
SET @media9_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media9_id, 'The Duffer Brothers', 'Blu-ray');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'Planet Earth II', '2017-03-28', 'available');
SET @media10_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media10_id, 'David Attenborough', 'Blu-ray');

-- Populate ITEM and DIGITAL_MEDIA tables - Audiobooks
INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'Harry Potter and the Philosopher''s Stone (Audiobook)', '2015-11-20', 'borrowed');
SET @media11_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media11_id, 'J.K. Rowling, Narrated by Stephen Fry', 'Digital');

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('DigitalMedia', 'Sherlock Holmes Collection (Audiobook)', '2017-05-15', 'available');
SET @media12_id = LAST_INSERT_ID();
INSERT INTO DIGITAL_MEDIA (ItemID, Creator, Format) VALUES
(@media12_id, 'Arthur Conan Doyle, Narrated by Stephen Fry', 'Digital');

-- Populate ITEM and MAGAZINE tables - Current
INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'National Geographic', '2023-06-01', 'available');
SET @mag1_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag1_id, 243, 6);

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'Time', '2023-07-01', 'borrowed');
SET @mag2_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag2_id, 201, 7);

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'Scientific American', '2023-05-01', 'available');
SET @mag3_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag3_id, 328, 5);

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'The Economist', '2023-07-15', 'available');
SET @mag4_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag4_id, 449, 9367);

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'Wired', '2023-06-15', 'reserved');
SET @mag5_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag5_id, 31, 6);

-- Populate ITEM and MAGAZINE tables - Older issues
INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'National Geographic', '2023-05-01', 'available');
SET @mag6_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag6_id, 243, 5);

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'National Geographic', '2023-04-01', 'borrowed');
SET @mag7_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag7_id, 243, 4);

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'Forbes', '2023-07-15', 'available');
SET @mag8_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag8_id, 205, 2);

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'The New Yorker', '2023-07-10', 'available');
SET @mag9_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag9_id, 99, 19);

INSERT INTO ITEM (ItemType, Title, PublicationDate, AvailabilityStatus) VALUES
('Magazine', 'Popular Science', '2023-06-01', 'available');
SET @mag10_id = LAST_INSERT_ID();
INSERT INTO MAGAZINE (ItemID, VolumeNumber, IssueNumber) VALUES
(@mag10_id, 302, 3);

-- Populate LOAN_TRANSACTION table with active loans
INSERT INTO LOAN_TRANSACTION (ClientID, ItemID, BorrowDate, DueDate, ReturnDate, CalculatedFine) VALUES
(1, @book2_id, '2023-07-15', '2023-07-29', NULL, 0.00),
(2, @media2_id, '2023-07-10', '2023-07-24', NULL, 0.00),
(3, @mag2_id, '2023-07-20', '2023-07-27', NULL, 0.00),
(4, @book4_id, '2023-07-05', '2023-07-19', NULL, 1.25),
(5, @media4_id, '2023-07-08', '2023-07-22', NULL, 0.00),
(6, @book7_id, '2023-07-14', '2023-07-28', NULL, 0.00),
(7, @media7_id, '2023-07-12', '2023-07-26', NULL, 0.00),
(8, @book12_id, '2023-07-18', '2023-08-01', NULL, 0.00),
(9, @mag7_id, '2023-07-17', '2023-07-24', NULL, 0.00),
(10, @media11_id, '2023-07-16', '2023-07-30', NULL, 0.00);

-- Populate LOAN_TRANSACTION table with recently returned items
INSERT INTO LOAN_TRANSACTION (ClientID, ItemID, BorrowDate, DueDate, ReturnDate, CalculatedFine) VALUES
(11, @book1_id, '2023-06-15', '2023-06-29', '2023-06-28', 0.00),
(12, @media1_id, '2023-06-10', '2023-06-24', '2023-06-25', 0.15),
(13, @book3_id, '2023-06-20', '2023-07-04', '2023-07-02', 0.00),
(14, @media3_id, '2023-06-25', '2023-07-09', '2023-07-05', 0.00),
(15, @book5_id, '2023-06-18', '2023-07-02', '2023-07-01', 0.00),
(16, @mag3_id, '2023-06-22', '2023-06-29', '2023-06-28', 0.00),
(17, @book6_id, '2023-06-27', '2023-07-11', '2023-07-08', 0.00),
(18, @media5_id, '2023-06-26', '2023-07-10', '2023-07-12', 0.30),
(19, @book10_id, '2023-06-15', '2023-06-29', '2023-06-30', 0.20),
(20, @mag4_id, '2023-06-20', '2023-06-27', '2023-06-25', 0.00);

-- Populate LOAN_TRANSACTION table with older loans
INSERT INTO LOAN_TRANSACTION (ClientID, ItemID, BorrowDate, DueDate, ReturnDate, CalculatedFine) VALUES
(1, @book5_id, '2023-05-10', '2023-05-24', '2023-05-23', 0.00),
(2, @media3_id, '2023-05-15', '2023-05-29', '2023-05-28', 0.00),
(3, @mag1_id, '2023-05-18', '2023-05-25', '2023-05-24', 0.00),
(4, @book8_id, '2023-05-20', '2023-06-03', '2023-06-01', 0.00),
(5, @media6_id, '2023-05-12', '2023-05-26', '2023-05-25', 0.00),
(6, @book11_id, '2023-05-08', '2023-05-22', '2023-05-20', 0.00),
(7, @media9_id, '2023-05-22', '2023-06-05', '2023-06-02', 0.00),
(8, @book13_id, '2023-05-16', '2023-05-30', '2023-05-28', 0.00),
(9, @mag5_id, '2023-05-19', '2023-05-26', '2023-05-25', 0.00),
(10, @media10_id, '2023-05-25', '2023-06-08', '2023-06-05', 0.00),
(11, @book14_id, '2023-04-10', '2023-04-24', '2023-04-22', 0.00),
(12, @media12_id, '2023-04-15', '2023-04-29', '2023-04-28', 0.00),
(13, @mag6_id, '2023-04-18', '2023-04-25', '2023-04-24', 0.00),
(14, @book15_id, '2023-04-20', '2023-05-04', '2023-05-06', 0.30),
(15, @mag8_id, '2023-04-12', '2023-04-19', '2023-04-25', 0.30);

-- Populate LOAN_TRANSACTION table with overdue returns
INSERT INTO LOAN_TRANSACTION (ClientID, ItemID, BorrowDate, DueDate, ReturnDate, CalculatedFine) VALUES
(16, @book1_id, '2023-04-05', '2023-04-19', '2023-04-25', 1.50),
(17, @media3_id, '2023-04-08', '2023-04-22', '2023-04-27', 0.75),
(18, @book6_id, '2023-04-12', '2023-04-26', '2023-05-03', 1.05),
(19, @media5_id, '2023-04-15', '2023-04-29', '2023-05-06', 1.05),
(20, @book10_id, '2023-04-18', '2023-05-02', '2023-05-08', 0.90),
(21, @media8_id, '2023-03-10', '2023-03-24', '2023-04-01', 1.20),
(22, @book11_id, '2023-03-15', '2023-03-29', '2023-04-05', 1.05),
(23, @media10_id, '2023-03-18', '2023-04-01', '2023-04-09', 0.80),
(24, @book13_id, '2023-03-20', '2023-04-03', '2023-04-10', 0.70),
(25, @mag9_id, '2023-03-22', '2023-03-29', '2023-04-05', 0.35);

-- Populate RESERVATION table with active reservations
INSERT INTO RESERVATION (ClientID, ItemID, ReservationDate, Status) VALUES
(3, @book9_id, '2023-07-18', 'active'),
(8, @mag5_id, '2023-07-15', 'active'),
(12, @book8_id, '2023-07-16', 'active'),
(4, @media8_id, '2023-07-14', 'active'),
(6, @book2_id, '2023-07-19', 'active'),
(15, @media2_id, '2023-07-17', 'active'),
(22, @book4_id, '2023-07-18', 'active'),
(11, @media4_id, '2023-07-16', 'active'),
(18, @book7_id, '2023-07-19', 'active'),
(7, @media7_id, '2023-07-15', 'active');

-- Populate RESERVATION table with fulfilled reservations
INSERT INTO RESERVATION (ClientID, ItemID, ReservationDate, Status) VALUES
(1, @media1_id, '2023-07-05', 'fulfilled'),
(5, @book3_id, '2023-06-28', 'fulfilled'),
(9, @mag3_id, '2023-06-30', 'fulfilled'),
(13, @book6_id, '2023-07-02', 'fulfilled'),
(17, @media5_id, '2023-07-01', 'fulfilled'),
(21, @book10_id, '2023-06-29', 'fulfilled'),
(25, @mag4_id, '2023-07-03', 'fulfilled'),
(2, @media3_id, '2023-06-27', 'fulfilled'),
(10, @book5_id, '2023-06-25', 'fulfilled');

-- Populate RESERVATION table with cancelled reservations
INSERT INTO RESERVATION (ClientID, ItemID, ReservationDate, Status) VALUES
(14, @book3_id, '2023-06-15', 'cancelled'),
(19, @media6_id, '2023-06-18', 'cancelled'),
(23, @book11_id, '2023-06-20', 'cancelled'),
(16, @media9_id, '2023-06-17', 'cancelled'),
(20, @book13_id, '2023-06-19', 'cancelled'),
(24, @mag9_id, '2023-06-21', 'cancelled');
