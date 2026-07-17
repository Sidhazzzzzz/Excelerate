class CourseModel {
  String courseTitle;
  String author;
  String imagePath;
  String durationLabel;
  String priceLabel;

  CourseModel({
    required this.courseTitle,
    required this.author,
    required this.imagePath,
    required this.durationLabel,
    required this.priceLabel,
  });

  static List<CourseModel> getCourses() {
    List <CourseModel> courses = [];
    
    courses.add(
      CourseModel(
        courseTitle: 'Intro to Programming',
        author: 'Tayyab Hussain',
        imagePath: 'assets/images/introprog.png',
        durationLabel: 'Duration: 4 Hr',
        priceLabel: 'Free',
      )
    );
    courses.add(
      CourseModel(
        courseTitle: 'Wireframing Basics',
        author: 'Dr. Smith',
        imagePath: 'assets/images/wireframing.png',
        durationLabel: 'Duration: 1 Hr',
        priceLabel: 'Paid',
      )
    );
    courses.add(
      CourseModel(
        courseTitle: 'Python Fundamentals',
        author: 'John Doe',
        imagePath: 'assets/images/python.png',
        durationLabel: 'Duration: 3 Hr',
        priceLabel: 'Free',
      )
    );
    courses.add(
      CourseModel(
        courseTitle: 'Flutter Starter',
        author: 'Jane Miller',
        imagePath: 'assets/images/flutter.png',
        durationLabel: 'Duration: 5 Hr',
        priceLabel: 'Free',
      )
    );
    return courses;
  }
}