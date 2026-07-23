import 'package:excelerate/models/lesson.dart';

class Module {
  final String id;
  final String title;
  final String description;
  final int order;
  final String duration;
  final bool isCompleted;
  final List<Lesson> lessons;

  Module({
    required this.id,
    required this.title,
    required this.description,
    this.order = 0,
    this.duration = '',
    this.isCompleted = false,
    this.lessons = const [],
  });

  // Factory constructor for creating a Module from JSON
  factory Module.fromJson(Map<String, dynamic> json) {
    return Module(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      order: json['order'] ?? 0,
      duration: json['duration'] ?? '',
      isCompleted: json['isCompleted'] ?? false,
      lessons: (json['lessons'] as List? ?? [])
          .map((lesson) => Lesson.fromJson(lesson))
          .toList(),
    );
  }

  // Convert Module to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'order': order,
      'duration': duration,
      'isCompleted': isCompleted,
      'lessons': lessons.map((lesson) => lesson.toJson()).toList(),
    };
  }

  // Copy with method
  Module copyWith({
    String? id,
    String? title,
    String? description,
    int? order,
    String? duration,
    bool? isCompleted,
    List<Lesson>? lessons,
  }) {
    return Module(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      order: order ?? this.order,
      duration: duration ?? this.duration,
      isCompleted: isCompleted ?? this.isCompleted,
      lessons: lessons ?? this.lessons,
    );
  }
}
