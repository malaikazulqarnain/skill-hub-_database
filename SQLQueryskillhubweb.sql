USE SkillHubWebsiteDB;
SELECT FullName, Email FROM Users;
SELECT CourseTitle, Price, Duration FROM Courses;
SELECT u.FullName, i.Expertise
FROM Instructors i
JOIN Users u ON i.UserID = u.UserID;
SELECT * FROM ContactMessages ORDER BY SentAt DESC;
SELECT * FROM ContactMessages ORDER BY SentAt DESC;
