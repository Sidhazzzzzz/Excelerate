// import 'package:flutter/material.dart';
import 'package:excelerate/models/course_model.dart';
import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Excelerate Learning Hub'),
//       // ),
//       body: SafeArea(
//         child: Container(
//           constraints: const BoxConstraints.expand(),
//           color: Color(0xFFFFFFFF),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: IntrinsicHeight(
//                   child: Container(
//                     color: Color(0xFFECF2FF),
//                     width: double.infinity,
//                     height: double.infinity,
//                     child: SingleChildScrollView(
//                       padding: const EdgeInsets.only(top: 78, right:31),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.only(bottom: 24, left: 38),
//                             child: const Text(
//                               'Welcome back',
//                               style: TextStyle(
//                                 color: Color(0xFF000000),
//                                 fontSize: 24,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: const EdgeInsets.symmetric(horizontal: 18),
//                             child: const Divider(
//                               height: 20,         
//                               thickness: 2,        
//                               indent: 20,          
//                               endIndent: 0,      
//                               color: Colors.black, 
//                             )
//                           ),

//                         ]
//                       )
//                     ),
//                   )
//                 )
//               )
//             ]
//           ),
//         ),
//       )
//     );
//   }
// }
class _HomePageState extends State<HomePage> {
  List<CourseModel> courses = [];
  List<CourseModel> allCourses = [];

  void _getCourses() {
    allCourses = CourseModel.getCourses();
    courses = List<CourseModel>.from(allCourses);
  }

  void _onSearchChanged(String value) {
    final query = value.toLowerCase().trim();
    setState(() {
      if (query.isEmpty) {
        courses = List<CourseModel>.from(allCourses);
      } else {
        courses = allCourses.where((course) {
          return course.courseTitle.toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getCourses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 164, 181, 216),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchSection(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 0, bottom: 32),
                  itemCount: courses.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: _courseCard(courses[index]),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _searchSection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome Back\nAlex!',
            style: TextStyle(
              color: Color(0xFF111827),
              fontSize: 30,
              fontWeight: FontWeight.w700,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 1,
            color: const Color(0xFFBAC7DD),
          ),
          const SizedBox(height: 18),
          TextField(
            onChanged: _onSearchChanged,
            decoration: InputDecoration(
              hintText: 'Search Course',
              prefixIcon: const Icon(Icons.search, color: Color(0xFF94A3B8)),
              filled: true,
              fillColor: const Color(0xFFF4F7FB),
              contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 26),
          const Text(
            'Recommended Courses',
            style: TextStyle(
              color: Color(0xFF1F2937),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  ClipRRect _courseCard(CourseModel course) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: const Color(0xFFF8FAFC),
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              course.imagePath,
              height: 168,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 168,
                  width: double.infinity,
                  color: const Color(0xFFD9E2EC),
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: Text(
                    error.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF334155),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.courseTitle,
                          style: const TextStyle(
                            color: Color(0xFF111827),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          course.author,
                          style: const TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        course.durationLabel,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          color: Color(0xFF374151),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        course.priceLabel,
                        style: const TextStyle(
                          color: Color(0xFF111827),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
