class CourseModel {
  final String coursetitle;
  final String author;
  final String image;
  final String finance;

  CourseModel({
    required this.coursetitle,
    required this.author,
    required this.image,
    required this.finance,
  });

  List<CourseModel> getCourses() {
    List<CourseModel> courses = [];

    courses.add(
      CourseModel(
        coursetitle: 'Intro Programming',
        author: 'John Doe',
        image: 'assets/images/introprog.png',
        finance: '\$99.99',
      )
    );
    courses.add(
      CourseModel(
        coursetitle: 'Wireframing',
        author: 'John Doe',
        image: 'assets/images/wireframing.png',
        finance: 'free',
      )
    );
    courses.add(
      CourseModel(
        coursetitle: 'Python',
        author: 'John Doe',
        image: 'assets/images/python.png',
        finance: 'free',
      )
    );
    courses.add(
      CourseModel(
        coursetitle: 'Flutter',
        author: 'John Doe',
        image: 'assets/images/flutter.png',
        finance: 'free',
      )
    );

    return courses;
  }
}