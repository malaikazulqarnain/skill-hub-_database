// SkillHub MongoDB Database
use skillhub_db;

// USERS
db.users.insertMany([
  {
    fullName: "Admin One",
    email: "admin@skillhub.com",
    passwordHash: "hashedpass",
    role: "Admin",
    bio: "System Administrator",
    createdAt: new Date()
  },
  {
    fullName: "malaika",
    email: "malaika@gmail.com",
    passwordHash: "hashedpass",
    role: "User",
    bio: "Student",
    createdAt: new Date()
  }
]);

// INSTRUCTORS
db.instructors.insertMany([
  {
    userEmail: "ayesha@skillhub.com",
    expertise: "AI Powered Marketing",
    experienceYears: 5
  }
]);

// COURSES
db.courses.insertMany([
  {
    title: "AI Powered Marketing",
    description: "Use AI tools for ads and analytics",
    price: 5500,
    duration: "3 Months",
    instructor: "Ahmed "
  },
  {
    title: "Podcast Channel Management",
    description: "Create and grow podcast channels",
    price: 4000,
    duration: "2 Months",
    instructor: "fatima"
  }
]);

// ENROLLMENTS
db.enrollments.insertMany([
  {
    userEmail: "eman@gmail.com",
    courseTitle: "AI Powered Marketing",
    enrolledAt: new Date()
  }
]);

// SUCCESS STORIES
db.successStories.insertMany([
  {
    userName: "malaika",
    courseName: "AI Powered Marketing",
    story: "This course helped me start freelancing."
  }
]);
