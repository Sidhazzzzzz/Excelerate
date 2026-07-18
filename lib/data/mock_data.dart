// data/mock_data.dart
import '../models/course.dart';
import '../models/module.dart';
import '../models/lesson.dart';
import '../models/user.dart';

class MockData {
  // Current logged-in user
  static User currentUser = User(
    id: 'u1',
    username: 'alex_johnson',
    email: 'alex@example.com',
    phoneNumber: '+92 300 1234567',
    fullName: 'Alex Johnson',
    profileImageUrl: '',
    role: UserRole.student,
    isActive: true,
    enrolledCourseIds: ['1', '2', '3'],
    completedCourseIds: [],
    courseProgress: {'1': 0.45, '2': 0.15, '3': 0.0},
    createdAt: DateTime.now().subtract(const Duration(days: 30)),
    lastLogin: DateTime.now(),
  );

  static final List<Course> recommendedCourses = [
    Course(
      id: '1',
      title: 'Intro to Programming',
      author: 'alison smith',
      description:
          'Learn the fundamentals of programming including variables, loops, functions, and object-oriented programming. This course is designed for absolute beginners with no prior coding experience.',
      imageUrl: 'assets/images/introprog.png', // Local image
      duration: '4 Hr',
      isFree: true,
      progress: 0.45,
      studentCount: 1245,
      rating: 4.8,
      reviewCount: 342,
      modules: [
        Module(
          id: 'm1',
          title: 'Getting Started',
          description:
              'Introduction to programming concepts and setting up your environment.',
          order: 1,
          duration: '45 min',
          isCompleted: true,
          lessons: [
            Lesson(
              id: 'l1',
              title: 'What is Programming?',
              description: 'Understanding the basics of programming',
              order: 1,
              duration: '15 min',
              isCompleted: true,
              type: LessonType.video,
            ),
            Lesson(
              id: 'l2',
              title: 'Setting Up Your Environment',
              description: 'Install the necessary tools',
              order: 2,
              duration: '30 min',
              isCompleted: false,
              type: LessonType.video,
            ),
          ],
        ),
        Module(
          id: 'm2',
          title: 'Variables & Data Types',
          description:
              'Understanding variables, strings, numbers, and booleans.',
          order: 2,
          duration: '1 Hr',
          isCompleted: false,
          lessons: [
            Lesson(
              id: 'l3',
              title: 'Variables in Programming',
              description: 'Learn about variables',
              order: 1,
              duration: '20 min',
              isCompleted: false,
              type: LessonType.video,
            ),
            Lesson(
              id: 'l4',
              title: 'Data Types Explained',
              description: 'Understanding different data types',
              order: 2,
              duration: '40 min',
              isCompleted: false,
              type: LessonType.video,
            ),
          ],
        ),
        Module(
          id: 'm3',
          title: 'Control Flow',
          description: 'Conditional statements and loops.',
          order: 3,
          duration: '1.5 Hr',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm4',
          title: 'Functions & OOP',
          description:
              'Writing reusable code with functions and understanding objects.',
          order: 4,
          duration: '1.5 Hr',
          isCompleted: false,
          lessons: [],
        ),
      ],
    ),
    Course(
      id: '2',
      title: 'Wireframing Basics',
      author: 'Dr. Smith',
      description:
          'Master the art of wireframing for UI/UX design. Learn how to create low-fidelity and high-fidelity wireframes that effectively communicate your design ideas.',
      imageUrl: 'assets/images/wireframing.png', // Local image
      duration: '3 Hr',
      isFree: true,
      progress: 0.15,
      studentCount: 876,
      rating: 4.6,
      reviewCount: 189,
      modules: [
        Module(
          id: 'm5',
          title: 'Introduction to Wireframing',
          description: 'What are wireframes and why they matter.',
          order: 1,
          duration: '30 min',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm6',
          title: 'Low-Fidelity Wireframes',
          description: 'Creating quick sketches and paper prototypes.',
          order: 2,
          duration: '1 Hr',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm7',
          title: 'High-Fidelity Wireframes',
          description: 'Using digital tools to create polished wireframes.',
          order: 3,
          duration: '1 Hr',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm8',
          title: 'User Testing',
          description: 'Validating your wireframes with users.',
          order: 4,
          duration: '30 min',
          isCompleted: false,
          lessons: [],
        ),
      ],
    ),
    Course(
      id: '3',
      title: 'Flutter for Beginners',
      author: 'Sarah Johnson',
      description:
          'Build beautiful cross-platform mobile apps with Flutter. This course covers everything from setup to building your first complete app.',
      imageUrl: 'assets/images/flutter.png', // Local image
      duration: '6 Hr',
      isFree: false,
      progress: 0.0,
      studentCount: 2341,
      rating: 4.9,
      reviewCount: 567,
      modules: [
        Module(
          id: 'm9',
          title: 'Flutter Setup',
          description: 'Installing Flutter and setting up your IDE.',
          order: 1,
          duration: '45 min',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm10',
          title: 'Dart Basics',
          description: 'Understanding the Dart programming language.',
          order: 2,
          duration: '1.5 Hr',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm11',
          title: 'Widgets & Layouts',
          description: 'Exploring Flutter\'s widget system.',
          order: 3,
          duration: '2 Hr',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm12',
          title: 'State Management',
          description: 'Managing app state effectively.',
          order: 4,
          duration: '2 Hr',
          isCompleted: false,
          lessons: [],
        ),
      ],
    ),
    Course(
      id: '4',
      title: 'Python Programming',
      author: 'Dr. Smith',
      description:
          'Master Python programming from basics to advanced concepts. Learn data structures, algorithms, and build real-world applications.',
      imageUrl: 'assets/images/python.png', // Local image
      duration: '8 Hr',
      isFree: true,
      progress: 0.0,
      studentCount: 1890,
      rating: 4.7,
      reviewCount: 423,
      modules: [
        Module(
          id: 'm13',
          title: 'Python Basics',
          description: 'Getting started with Python syntax and basic concepts.',
          order: 1,
          duration: '2 Hr',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm14',
          title: 'Data Structures',
          description: 'Lists, dictionaries, sets, and tuples in Python.',
          order: 2,
          duration: '2.5 Hr',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm15',
          title: 'Functions & Modules',
          description: 'Writing reusable code with functions and modules.',
          order: 3,
          duration: '2 Hr',
          isCompleted: false,
          lessons: [],
        ),
        Module(
          id: 'm16',
          title: 'File Handling & APIs',
          description: 'Working with files and APIs in Python.',
          order: 4,
          duration: '1.5 Hr',
          isCompleted: false,
          lessons: [],
        ),
      ],
    ),
  ];

  // Pre-defined users for login simulation
  static final List<User> registeredUsers = [
    User(
      id: 'u1',
      username: 'alex_johnson',
      email: 'alex@example.com',
      phoneNumber: '+92 300 1234567',
      fullName: 'Alex Johnson',
      profileImageUrl: '',
      role: UserRole.student,
      isActive: true,
      enrolledCourseIds: ['1', '2', '3'],
      completedCourseIds: [],
      courseProgress: {'1': 0.45, '2': 0.15, '3': 0.0},
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
      lastLogin: DateTime.now(),
    ),
    User(
      id: 'u2',
      username: 'sarah_miller',
      email: 'sarah@example.com',
      phoneNumber: '+92 300 9876543',
      fullName: 'Sarah Miller',
      profileImageUrl: '',
      role: UserRole.student,
      isActive: true,
      enrolledCourseIds: ['1', '2', '3', '4'],
      completedCourseIds: ['1'],
      courseProgress: {'1': 1.0, '2': 0.75, '3': 0.0, '4': 0.0},
      createdAt: DateTime.now().subtract(const Duration(days: 60)),
      lastLogin: DateTime.now(),
    ),
    User(
      id: 'u3',
      username: 'michael_khan',
      email: 'michael@example.com',
      phoneNumber: '+92 333 1234567',
      fullName: 'Michael Khan',
      profileImageUrl: '',
      role: UserRole.student,
      isActive: true,
      enrolledCourseIds: ['2', '4'],
      completedCourseIds: [],
      courseProgress: {'2': 0.30, '4': 0.0},
      createdAt: DateTime.now().subtract(const Duration(days: 15)),
      lastLogin: DateTime.now(),
    ),
    User(
      id: 'u4',
      username: 'emma_watson',
      email: 'emma@example.com',
      phoneNumber: '+92 344 7654321',
      fullName: 'Emma Watson',
      profileImageUrl: '',
      role: UserRole.instructor,
      isActive: true,
      enrolledCourseIds: [],
      completedCourseIds: [],
      courseProgress: {},
      createdAt: DateTime.now().subtract(const Duration(days: 120)),
      lastLogin: DateTime.now(),
    ),
  ];

  // Login method
  static bool login(String username, String password) {
    User? user;
    try {
      user = registeredUsers.firstWhere(
        (u) => u.username.toLowerCase() == username.toLowerCase(),
      );
    } catch (e) {
      return false;
    }

    currentUser = user.copyWith(lastLogin: DateTime.now());

    return true;
  }

  // Logout method
  static void logout() {
    currentUser = registeredUsers.first;
  }

  // Get user by username
  static User? getUserByUsername(String username) {
    try {
      return registeredUsers.firstWhere(
        (user) => user.username.toLowerCase() == username.toLowerCase(),
      );
    } catch (e) {
      return null;
    }
  }

  // Get user by email
  static User? getUserByEmail(String email) {
    try {
      return registeredUsers.firstWhere(
        (user) => user.email.toLowerCase() == email.toLowerCase(),
      );
    } catch (e) {
      return null;
    }
  }

  // Check if username exists
  static bool isUsernameExists(String username) {
    return registeredUsers.any(
      (user) => user.username.toLowerCase() == username.toLowerCase(),
    );
  }

  // Check if email exists
  static bool isEmailExists(String email) {
    return registeredUsers.any(
      (user) => user.email.toLowerCase() == email.toLowerCase(),
    );
  }

  // Register new user
  static bool registerUser(User newUser) {
    if (isUsernameExists(newUser.username)) {
      return false;
    }
    if (isEmailExists(newUser.email)) {
      return false;
    }

    registeredUsers.add(newUser);
    currentUser = newUser;
    return true;
  }

  // Get enrolled courses for current user
  static List<Course> getEnrolledCourses() {
    return recommendedCourses
        .where((course) => currentUser.enrolledCourseIds.contains(course.id))
        .toList();
  }

  // Get completed courses for current user
  static List<Course> getCompletedCoursesForUser() {
    return recommendedCourses
        .where((course) => currentUser.completedCourseIds.contains(course.id))
        .toList();
  }

  // Get in-progress courses for current user
  static List<Course> getInProgressCoursesForUser() {
    return recommendedCourses.where((course) {
      final progress = currentUser.courseProgress[course.id] ?? 0.0;
      return progress > 0 && progress < 1.0;
    }).toList();
  }

  // Get course progress for current user
  static double getCourseProgressForUser(String courseId) {
    return currentUser.courseProgress[courseId] ?? 0.0;
  }

  static Course getCourseById(String id) {
    return recommendedCourses.firstWhere((course) => course.id == id);
  }

  static List<Course> getCoursesByAuthor(String author) {
    return recommendedCourses
        .where((course) => course.author.contains(author))
        .toList();
  }

  static List<Course> getFreeCourses() {
    return recommendedCourses.where((course) => course.isFree).toList();
  }

  static List<Course> getPremiumCourses() {
    return recommendedCourses.where((course) => !course.isFree).toList();
  }

  static List<Course> getInProgressCourses() {
    return recommendedCourses
        .where((course) => course.progress > 0 && course.progress < 1)
        .toList();
  }

  static List<Course> getCompletedCourses() {
    return recommendedCourses.where((course) => course.progress >= 1).toList();
  }
}
