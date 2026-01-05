USE SkillHubWebsiteDB;
INSERT INTO Roles (RoleName)
VALUES ('Admin'), ('Instructor'), ('User');
INSERT INTO Users (FullName, Email, PasswordHash, RoleID, Bio)
VALUES
('Admin One', 'admin@skillhub.com', 'hashedpass', 1, 'create cinematic videos'),

('Ahmed ', 'ahmed@skillhub.com', 'hashedpass', 2, 'ai powered'),
('Sara ', 'sara@skillhub.com', 'hashedpass', 2, 'illustration'),
('malaika', 'malaika@skillhub.com', 'hashedpass', 2, 'podcast channel'),

('fatima', 'fatima@gmail.com', 'hashedpass', 3, 'drop shipping'),
('Ayesha ', 'ayesha@gmail.com', 'hashedpass', 3, 'Learning UI Design'),
('nida', 'nida@gmail.com', 'hashedpass', 3, 'Interested in Data Science');
INSERT INTO Instructors (UserID, Expertise, ExperienceYears)
VALUES
(2, 'podcast channel', 5),
(3, 'illustration', 4),
(4, 'ai powered', 6);
INSERT INTO Courses (CourseTitle, Description, Price, Duration, InstructorID)
VALUES
('AI Powered Marketing','Learn how to use AI tools for digital marketing, content creation, ad optimization, and customer targeting.',
  5500,'3 Months', 1),
('Illustration & Graphic Design','Create professional illustrations and digital artwork using modern design tools and creative techniques.',
4500,'2 Months',2),
( 'Dropshipping Business',
  'Learn how to start and scale a dropshipping business including product research, supplier management, and marketing.',
  5000,'3 Months', 1),
('Podcast Channel Management',
  'Build and grow a podcast channel covering recording, editing, publishing, branding, and monetization strategies.',
  4000,'2 Months',3);
  INSERT INTO Enrollments (UserID, CourseID)
VALUES
(5, 1), 
(6, 2), 
(7, 3), 
(5, 4); 
INSERT INTO AboutContent (Title, Description)
VALUES
('About SkillHub', 'SkillHub is an online learning platform providing industry-ready skills.'),
('Our Mission', 'To empower students with practical and job-oriented skills.');
INSERT INTO Settings (SettingKey, SettingValue)
VALUES
('WebsiteName', 'SkillHub'),
('Theme', 'Light'),
('ContactEmail', 'support@skillhub.com');
INSERT INTO ActivityLogs (UserID, Action)
VALUES
(1, 'Admin logged in'),
(1, 'Added new course'),
(1, 'Updated website content'),
(1, 'Logged out');


