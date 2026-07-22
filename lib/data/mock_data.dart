// data/mock_data.dart
import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/course.dart';
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

  static List<Course> recommendedCourses = [];
  static bool _coursesLoaded = false;

  static Future<void> ensureCoursesLoaded() async {
    if (_coursesLoaded) return;

    final jsonText = await rootBundle.loadString('assets/data/courses.json');
    final Map<String, dynamic> jsonData = json.decode(jsonText);
    recommendedCourses = (jsonData['courses'] as List<dynamic>)
        .map((courseJson) => Course.fromJson(courseJson as Map<String, dynamic>))
        .toList();

    _coursesLoaded = true;
  }

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
    return recommendedCourses.firstWhere(
      (course) => course.id == id,
      orElse: () => Course(
        id: '',
        title: 'Course Not Found',
        author: '',
        description: 'Unable to load the selected course.',
        imageUrl: 'assets/images/introprog.png',
        duration: '',
        isFree: true,
      ),
    );
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
