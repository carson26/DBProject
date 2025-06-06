-- Create the database
CREATE DATABASE library_management_system;
USE library_management_system;

-- Create MEMBERSHIP table
CREATE TABLE MEMBERSHIP (
    MembershipType VARCHAR(50) PRIMARY KEY,
    Description VARCHAR(255) NOT NULL,
    BorrowingLimit INT NOT NULL,
    FeeStructure DECIMAL(5,2) NOT NULL
) ENGINE=InnoDB;

-- Create CLIENT table
CREATE TABLE CLIENT (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    MembershipType VARCHAR(50) NOT NULL,
    AccountStatus ENUM('active', 'suspended', 'closed') NOT NULL DEFAULT 'active',
    FOREIGN KEY (MembershipType) REFERENCES MEMBERSHIP(MembershipType)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;

-- Create ITEM table
CREATE TABLE ITEM (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    ItemType ENUM('Book', 'DigitalMedia', 'Magazine') NOT NULL,
    Title VARCHAR(255) NOT NULL,
    PublicationDate DATE NOT NULL,
    AvailabilityStatus ENUM('available', 'borrowed', 'reserved') NOT NULL DEFAULT 'available'
) ENGINE=InnoDB;

-- Create BOOK table
CREATE TABLE BOOK (
    ItemID INT PRIMARY KEY,
    ISBN VARCHAR(13),
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    FOREIGN KEY (ItemID) REFERENCES ITEM(ItemID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=InnoDB;

-- Create DIGITAL_MEDIA table
CREATE TABLE DIGITAL_MEDIA (
    ItemID INT PRIMARY KEY,
    Creator VARCHAR(255) NOT NULL,
    Format ENUM('DVD', 'Blu-ray', 'Digital') NOT NULL,
    FOREIGN KEY (ItemID) REFERENCES ITEM(ItemID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=InnoDB;

-- Create MAGAZINE table
CREATE TABLE MAGAZINE (
    ItemID INT PRIMARY KEY,
    VolumeNumber INT NOT NULL,
    IssueNumber INT NOT NULL,
    FOREIGN KEY (ItemID) REFERENCES ITEM(ItemID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=InnoDB;

-- Create LOAN_TRANSACTION table
CREATE TABLE LOAN_TRANSACTION (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    ItemID INT NOT NULL,
    BorrowDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE DEFAULT NULL,
    CalculatedFine DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    CONSTRAINT chk_fine CHECK (CalculatedFine >= 0),
    FOREIGN KEY (ClientID) REFERENCES CLIENT(ClientID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (ItemID) REFERENCES ITEM(ItemID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;

-- Create RESERVATION table
CREATE TABLE RESERVATION (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    ItemID INT NOT NULL,
    ReservationDate DATE NOT NULL,
    Status ENUM('active', 'cancelled', 'fulfilled') NOT NULL DEFAULT 'active',
    FOREIGN KEY (ClientID) REFERENCES CLIENT(ClientID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (ItemID) REFERENCES ITEM(ItemID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;

-- Create indexes for performance optimization
CREATE INDEX idx_item_title ON ITEM(Title);
CREATE INDEX idx_book_author ON BOOK(Author);
CREATE INDEX idx_book_isbn ON BOOK(ISBN);
CREATE INDEX idx_magazine_issue ON MAGAZINE(VolumeNumber, IssueNumber);
CREATE INDEX idx_loan_dates ON LOAN_TRANSACTION(BorrowDate, DueDate, ReturnDate);
CREATE INDEX idx_loan_client ON LOAN_TRANSACTION(ClientID);
CREATE INDEX idx_loan_item ON LOAN_TRANSACTION(ItemID);
CREATE INDEX idx_reservation_client ON RESERVATION(ClientID);
CREATE INDEX idx_reservation_item ON RESERVATION(ItemID);
CREATE INDEX idx_client_name ON CLIENT(Name);
