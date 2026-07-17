class CourseModel {
  final String coursetitle;
  final String author;
  final String image;
  final String duration;
  final String finance;

  CourseModel({
    required this.coursetitle,
    required this.author,
    required this.image,
    required this.duration,
    required this.finance,
  });

  List<CourseModel> getCourses() {
    List<CourseModel> courses = [];

    courses.add(
      CourseModel(
        coursetitle: 'Intro Programming',
        author: 'John Doe',
        image: 'assets/images/introprog.png',
        duration: '2h 30m',
        finance: '\$99.99',
      )
    );
    courses.add(
      CourseModel(
        coursetitle: 'Wireframing',
        author: 'John Doe',
        image: 'assets/images/wireframing.png',
        duration: '1h 45m',
        finance: 'free',
      )
    );
    courses.add(
      CourseModel(
        coursetitle: 'Python',
        author: 'John Doe',
        image: 'assets/images/python.png',
        duration: '3h 15m',
        finance: 'free',
      )
    );
    courses.add(
      CourseModel(
        coursetitle: 'Flutter',
        author: 'John Doe',
        image: 'assets/images/flutter.png',
        duration: '4h 20m',
        finance: 'free',
      )
    );

    return courses;
  }
}