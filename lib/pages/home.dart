import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Excelerate Learning Hub'),
      // ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IntrinsicHeight(
                  child: Container(
                    color: Color(0xFFECF2FF),
                    width: double.infinity,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(top: 78, right:31),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 24, left: 38),
                            child: Text("Welcome back \n Alex",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 18),
                            child: const Divider(
                              height: 20,         
                              thickness: 2,        
                              indent: 20,          
                              endIndent: 0,      
                              color: Colors.black, 
                            )
                          ),

                        ]
                      )
                    ),
                  )
                )
              )
            ]
          ),
        ),
      )
    );
  }
}