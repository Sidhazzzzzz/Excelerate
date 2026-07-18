class User {
  final String id;
  final String username;
  final String email;
  final String phoneNumber;
  final String fullName;
  final String profileImageUrl;
  final DateTime createdAt;
  final DateTime lastLogin;
  final UserRole role;
  final bool isActive;
  final List<String> enrolledCourseIds;
  final List<String> completedCourseIds;
  final Map<String, double> courseProgress;

  User({
    required this.id,
    required this.username,
    required this.email,
    this.phoneNumber = '',
    this.fullName = '',
    this.profileImageUrl = '',
    DateTime? createdAt,
    DateTime? lastLogin,
    this.role = UserRole.student,
    this.isActive = true,
    this.enrolledCourseIds = const [],
    this.completedCourseIds = const [],
    this.courseProgress = const {},
  }) : createdAt = createdAt ?? DateTime.now(),
       lastLogin = lastLogin ?? DateTime.now();

  // Factory constructor for creating a User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      username: json['username'] ?? '',
      email: json['email'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      fullName: json['fullName'] ?? '',
      profileImageUrl: json['profileImageUrl'] ?? '',
      role: UserRole.values.firstWhere(
        (e) => e.toString() == 'UserRole.${json['role']}',
        orElse: () => UserRole.student,
      ),
      isActive: json['isActive'] ?? true,
      enrolledCourseIds: List<String>.from(json['enrolledCourseIds'] ?? []),
      completedCourseIds: List<String>.from(json['completedCourseIds'] ?? []),
      courseProgress: Map<String, double>.from(json['courseProgress'] ?? {}),
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : DateTime.now(),
      lastLogin: json['lastLogin'] != null
          ? DateTime.parse(json['lastLogin'])
          : DateTime.now(),
    );
  }

  // Convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'fullName': fullName,
      'profileImageUrl': profileImageUrl,
      'role': role.toString().split('.').last,
      'isActive': isActive,
      'enrolledCourseIds': enrolledCourseIds,
      'completedCourseIds': completedCourseIds,
      'courseProgress': courseProgress,
      'createdAt': createdAt.toIso8601String(),
      'lastLogin': lastLogin.toIso8601String(),
    };
  }

  // Copy with method
  User copyWith({
    String? id,
    String? username,
    String? email,
    String? phoneNumber,
    String? fullName,
    String? profileImageUrl,
    UserRole? role,
    bool? isActive,
    List<String>? enrolledCourseIds,
    List<String>? completedCourseIds,
    Map<String, double>? courseProgress,
    DateTime? createdAt,
    DateTime? lastLogin,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      fullName: fullName ?? this.fullName,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      role: role ?? this.role,
      isActive: isActive ?? this.isActive,
      enrolledCourseIds: enrolledCourseIds ?? this.enrolledCourseIds,
      completedCourseIds: completedCourseIds ?? this.completedCourseIds,
      courseProgress: courseProgress ?? this.courseProgress,
      createdAt: createdAt ?? this.createdAt,
      lastLogin: lastLogin ?? this.lastLogin,
    );
  }

  // Helper methods
  double getOverallProgress() {
    if (enrolledCourseIds.isEmpty) return 0.0;
    double totalProgress = 0.0;
    for (var courseId in enrolledCourseIds) {
      totalProgress += courseProgress[courseId] ?? 0.0;
    }
    return totalProgress / enrolledCourseIds.length;
  }

  bool isCourseEnrolled(String courseId) {
    return enrolledCourseIds.contains(courseId);
  }

  bool isCourseCompleted(String courseId) {
    return completedCourseIds.contains(courseId);
  }

  double getCourseProgress(String courseId) {
    return courseProgress[courseId] ?? 0.0;
  }
}

enum UserRole { student, instructor, admin }
