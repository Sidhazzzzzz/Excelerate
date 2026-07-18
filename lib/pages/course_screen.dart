import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
    const CourseScreen ({super.key});

    @override
    Widget build(BuildContext context){
        final modules=[
            "Module 1: Basics",
            "Module 2: Variables",
            "Module 3: Loops",
            "Module 4: Arrays",
        ];
        return Scaffold(
            body:SafeArea(
                child:SingleChildScrollView(
                    child:Padding(
                        padding:const EdgeInsets.all(20),
                        child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Row(
                                    children:[
                                        Icon(Icons.arrow_back),
                                        SizedBox(width:20),
                                        Text("Course Details",
                                            style:TextStyle(
                                                fontSize:24,
                                                fontWeight:FontWeight.bold,
                                            )
                                        ),
                                    ]
                                ),
                                SizedBox(height:15),
                                Divider(),
                                SizedBox(height:15),
                                Container (
                                    height: 220,
                                    width: double.infinity,
                                    color: Colors.grey[300],
                                    child: const Center(
                                        child:Icon(Icons.image,
                                        size: 70,
                                        color: Colors.grey,
                                        ),
                                    ),
                                ),
                                SizedBox(height:20),
                                Row(
                                    children:[
                                        Column(
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children:[
                                                Text("Intro to Programming",
                                                    style:TextStyle(
                                                        fontSize:22,
                                                        fontWeight:FontWeight.bold,
                                                    ),
                                                ),
                                                Text("By Tayyab"),
                                            ],
                                        ),
                                        Spacer(),
                                        Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                            Text("Duration: 4 Hr"),
                                             Text("Free Course"),
                                            ],
                                        ),
                                    ],
                                    
                                ),
                                SizedBox(height:25),
                                Text("Course Description",
                                    style:TextStyle(
                                        fontSize:20,
                                        fontWeight:FontWeight.bold,   
                                    ),
                                ),
                                SizedBox(height:8),
                                Text("This comprehensive course provides a solid foundation in web development, covering HTML, CSS, and JavaScript. Learners will build responsive websites from scratch, understand fundamental programming concepts, and prepare for advanced topics in front-end and back-end development. Perfect for beginners and those looking to refresh their skills.",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                        height: 1.5,
                                    ),
                                ),
                                  Text("Curriculum",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                                SizedBox(height:10),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: modules.map((module) {
                                        return Padding(
                                            padding: const EdgeInsets.only(bottom: 5),
                                            child: Text(module,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                ),
                                            ),
                                        );
                                     }).toList(),
                                ),
                                SizedBox(height: 30),
                                Text("Course Completion Bar",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                                SizedBox(height:12),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: LinearProgressIndicator(
                                        value: 0.15,
                                        minHeight: 12,
                                        backgroundColor: Colors.grey.shade300,
                                        valueColor: const AlwaysStoppedAnimation(
                                        Colors.blue,
                                        ),
                                    ),
                                ),
                                SizedBox(height: 8),
                                Text("15% Completed"),
                            ],
                            
                        )
                    )
                ),
            ),

        );
    }
}