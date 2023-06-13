

import 'package:flutter/material.dart';

import '../../utils/routes_name.dart';
import '../custom/CustomCard.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const  SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.studentsDir);
                      },
                      child: CustomCard(
                          text: 'Students Directory',
                          imagePath: 'images/b.jpg')),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.teachersDir);
                      },
                      child: CustomCard(
                          text: 'Teachers Directory',
                          imagePath: 'images/c.jpg')),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.writeApplicationScreen);
                      },
                      child:
                      CustomCard(text: 'Write Application', imagePath: 'images/d.jpg')),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.courseScreen);
                      },
                      child:
                      CustomCard(text: 'Course Directory', imagePath: 'images/courses.jpg')),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.myProjects);
                      },
                      child:
                      CustomCard(text: 'My Tasks', imagePath: 'images/projects.jpg')),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.transcriptScreen);
                      },
                      child:
                      CustomCard(text: 'Transcript', imagePath: 'images/report.jpg')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
