CREATE DATABASE SkillHubWebsiteDB;
GO
USE SkillHubWebsiteDB;
GO
CREATE TABLE Roles (
    RoleID INT IDENTITY PRIMARY KEY,
    RoleName VARCHAR(50) UNIQUE NOT NULL
);
CREATE TABLE Users (
    UserID INT IDENTITY PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    RoleID INT,
    Bio TEXT,
    ProfileImage VARCHAR(255),
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);
CREATE TABLE Instructors (
    InstructorID INT IDENTITY PRIMARY KEY,
    UserID INT UNIQUE,
    Expertise VARCHAR(150),
    ExperienceYears INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
CREATE TABLE Courses (
    CourseID INT IDENTITY PRIMARY KEY,
    CourseTitle VARCHAR(150) NOT NULL,
    Description TEXT,
    Price DECIMAL(10,2),
    Duration VARCHAR(50),
    InstructorID INT,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);
CREATE TABLE Enrollments (
    EnrollmentID INT IDENTITY PRIMARY KEY,
    UserID INT,
    CourseID INT,
    EnrollDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
CREATE TABLE SuccessStories (
    StoryID INT IDENTITY PRIMARY KEY,
    UserName VARCHAR(100),
    CourseName VARCHAR(150),
    Story TEXT,
    CreatedAt DATETIME DEFAULT GETDATE()
);
CREATE TABLE ContactMessages (
    MessageID INT IDENTITY PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Message TEXT,
    SentAt DATETIME DEFAULT GETDATE()
);
CREATE TABLE AboutContent (
    AboutID INT IDENTITY PRIMARY KEY,
    Title VARCHAR(150),
    Description TEXT,
    UpdatedAt DATETIME DEFAULT GETDATE()
);
CREATE TABLE Settings (
    SettingID INT IDENTITY PRIMARY KEY,
    SettingKey VARCHAR(100) UNIQUE,
    SettingValue VARCHAR(255)
);
CREATE TABLE ActivityLogs (
    LogID INT IDENTITY PRIMARY KEY,
    UserID INT,
    Action VARCHAR(255),
    LogTime DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
