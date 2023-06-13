import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key, required this.data});

  dynamic data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Profile')),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50.0),
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
            ),
            Text(
              data['name'],
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'Age: ${data['age']}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10,),
            Text(
              'Contact No.: ${data['phone']}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10,),
            Text(
              'Courses: ${data['course']}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
