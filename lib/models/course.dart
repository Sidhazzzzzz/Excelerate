import 'package:excelerate/models/module.dart';

class Course {
  final String id;
  final String title;
  final String author;
  final String description;
  final String imageUrl;
  final String duration;
  final bool isFree;
  final double progress;
  final List<Module> modules;
  final int studentCount;
  final double rating;
  final int reviewCount;
  final DateTime createdAt;

  Course({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
    required this.duration,
    required this.isFree,
    this.progress = 0.0,
    this.modules = const [],
    this.studentCount = 0,
    this.rating = 4.5,
    this.reviewCount = 0,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  // Factory constructor for creating a Course from JSON (for API responses)
  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      author: json['author'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      duration: json['duration'] ?? '',
      isFree: json['isFree'] ?? true,
      progress: (json['progress'] ?? 0.0).toDouble(),
      studentCount: json['studentCount'] ?? 0,
      rating: (json['rating'] ?? 4.5).toDouble(),
      reviewCount: json['reviewCount'] ?? 0,
      modules: (json['modules'] as List? ?? [])
          .map((module) => Module.fromJson(module))
          .toList(),
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : DateTime.now(),
    );
  }

  // Convert Course to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'description': description,
      'imageUrl': imageUrl,
      'duration': duration,
      'isFree': isFree,
      'progress': progress,
      'studentCount': studentCount,
      'rating': rating,
      'reviewCount': reviewCount,
      'modules': modules.map((module) => module.toJson()).toList(),
      'createdAt': createdAt.toIso8601String(),
    };
  }

  // Copy with method for updating specific fields
  Course copyWith({
    String? id,
    String? title,
    String? author,
    String? description,
    String? imageUrl,
    String? duration,
    bool? isFree,
    double? progress,
    List<Module>? modules,
    int? studentCount,
    double? rating,
    int? reviewCount,
    DateTime? createdAt,
  }) {
    return Course(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      duration: duration ?? this.duration,
      isFree: isFree ?? this.isFree,
      progress: progress ?? this.progress,
      modules: modules ?? this.modules,
      studentCount: studentCount ?? this.studentCount,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
