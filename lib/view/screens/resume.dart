import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Waqas Ahmed',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )),
                    Text(
                      "Computer Science Graduate",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Email: waqasahmed123@gmail.com",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Address: XYZ Street Karachi Pakistan",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage('images/avatar.jpg')),
              ],
            ),
            Text('---------------------------------------------------------------------------------------------'),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Introduction :",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "“I am looking for an entry-level position to kickstart my career in the (specify field). I wish to work in a dynamic organisation that will contribute to my personal growth”"),
            Text(
                '---------------------------------------------------------------------------------------------'),
            SizedBox(
              height: 10,
            ),
            Text(
              "Education :",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Graduation: ComputerScience from UoK in 2021"),
            Text("Inter: PreEngineering from Jinnah Govt. College in 2018"),
            Text("Matric: Science from SNFC Base Masroor in 2015"),
            Text(
                '---------------------------------------------------------------------------------------------'),
            SizedBox(
              height: 10,
            ),
            Text(
              "Skills :",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Java"),
            Text("Python"),
            Text("Flutter"),
            Text("Android"),
            Text("SQL"),
            Text(
                '---------------------------------------------------------------------------------------------'),
            SizedBox(
              height: 10,
            ),
            Text(
              "Projects :",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "1. Completed two phases of Compiler Construction Using Python"),
            SizedBox(
              height: 10,
            ),
            Text(
                "2. Worked on Email Reading for blind people using Python library NLTK"),
            SizedBox(
              height: 10,
            ),
            Text(
                "3. Worked on Student Login Portal using Flutter and Android native."),
          ],
        ),
      ),
    );
  }
}
