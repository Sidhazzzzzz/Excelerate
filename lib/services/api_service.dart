import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/course.dart';
import '../models/module.dart';
import '../models/lesson.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;
  ApiService._internal();

  // Cache to avoid loading multiple times
  List<Course>? _cachedCourses;

  // Simulate network delay
  Future<void> _simulateNetworkDelay() async {
    await Future.delayed(const Duration(milliseconds: 500));
  }

  // Load courses from local JSON
  Future<List<Course>> getCourses() async {
    // Return cached data if available
    if (_cachedCourses != null) {
      return _cachedCourses!;
    }

    try {
      // Simulate network delay
      await _simulateNetworkDelay();

      // Load JSON from assets
      final String jsonString = await rootBundle.loadString(
        'assets/data/courses.json',
      );
      final Map<String, dynamic> jsonData = json.decode(jsonString);

      final List<dynamic> coursesJson = jsonData['courses'];

      // Parse JSON to Course objects
      _cachedCourses = coursesJson.map((json) {
        return Course.fromJson(json);
      }).toList();

      return _cachedCourses!;
    } catch (e) {
      throw Exception('Failed to load courses: $e');
    }
  }

  // Get a single course by ID
  Future<Course> getCourseById(String id) async {
    try {
      final courses = await getCourses();
      final course = courses.firstWhere(
        (course) => course.id == id,
        orElse: () => throw Exception('Course not found'),
      );
      return course;
    } catch (e) {
      throw Exception('Failed to get course: $e');
    }
  }

  // Get courses by author
  Future<List<Course>> getCoursesByAuthor(String author) async {
    try {
      final courses = await getCourses();
      return courses
          .where(
            (course) =>
                course.author.toLowerCase().contains(author.toLowerCase()),
          )
          .toList();
    } catch (e) {
      throw Exception('Failed to get courses by author: $e');
    }
  }

  // Get free courses
  Future<List<Course>> getFreeCourses() async {
    try {
      final courses = await getCourses();
      return courses.where((course) => course.isFree).toList();
    } catch (e) {
      throw Exception('Failed to get free courses: $e');
    }
  }

  // Get premium courses
  Future<List<Course>> getPremiumCourses() async {
    try {
      final courses = await getCourses();
      return courses.where((course) => !course.isFree).toList();
    } catch (e) {
      throw Exception('Failed to get premium courses: $e');
    }
  }

  // Search courses by title or author
  Future<List<Course>> searchCourses(String query) async {
    try {
      final courses = await getCourses();
      final lowerQuery = query.toLowerCase();
      return courses
          .where(
            (course) =>
                course.title.toLowerCase().contains(lowerQuery) ||
                course.author.toLowerCase().contains(lowerQuery),
          )
          .toList();
    } catch (e) {
      throw Exception('Failed to search courses: $e');
    }
  }

  // Clear cache (useful for testing)
  void clearCache() {
    _cachedCourses = null;
  }
}

