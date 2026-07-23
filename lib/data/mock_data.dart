// data/mock_data.dart

import 'models/user.dart';

class MockData {
  // Current logged-in user
  static User currentUser = User(
    id: 'u1',
    uid: 'u1',
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



  // Pre-defined users for login simulation
  static final List<User> registeredUsers = [
    User(
      id: 'u1',
    uid: 'u1',
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
      uid: 'u2',
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
      uid: 'u3',
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
      uid: 'u4',
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


  // Logout method
  static void logout() {
    currentUser = registeredUsers.first;
  }




  // Get course progress for current user
  static double getCourseProgressForUser(String courseId) {
    return currentUser.courseProgress[courseId] ?? 0.0;
  }
}
