import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  CourseDetailScreen({super.key,required this.data});

  dynamic data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Course Details')),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50.0),
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/courses.jpg'),
              ),
            ),
            Text(
              data['name'],
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'CreditHours : ${data['credits']}',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Instructor: ${data['instructor']}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
