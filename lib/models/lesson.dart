class Lesson {
  final String id;
  final String title;
  final String description;
  final int order;
  final String duration;
  final String videoUrl;
  final bool isCompleted;
  final LessonType type;

  Lesson({
    required this.id,
    required this.title,
    required this.description,
    this.order = 0,
    this.duration = '',
    this.videoUrl = '',
    this.isCompleted = false,
    this.type = LessonType.video,
  });

  // Factory constructor for creating a Lesson from JSON
  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      order: json['order'] ?? 0,
      duration: json['duration'] ?? '',
      videoUrl: json['videoUrl'] ?? '',
      isCompleted: json['isCompleted'] ?? false,
      type: LessonType.values.firstWhere(
        (e) => e.toString() == 'LessonType.${json['type']}',
        orElse: () => LessonType.video,
      ),
    );
  }

  // Convert Lesson to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'order': order,
      'duration': duration,
      'videoUrl': videoUrl,
      'isCompleted': isCompleted,
      'type': type.toString().split('.').last,
    };
  }

  // Copy with method
  Lesson copyWith({
    String? id,
    String? title,
    String? description,
    int? order,
    String? duration,
    String? videoUrl,
    bool? isCompleted,
    LessonType? type,
  }) {
    return Lesson(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      order: order ?? this.order,
      duration: duration ?? this.duration,
      videoUrl: videoUrl ?? this.videoUrl,
      isCompleted: isCompleted ?? this.isCompleted,
      type: type ?? this.type,
    );
  }
}

enum LessonType { video, quiz, assignment, reading }
