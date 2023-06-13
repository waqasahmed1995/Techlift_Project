import 'package:flutter/material.dart';
import 'package:rough_work/view/screens/avgcalculatortask.dart';
import 'package:rough_work/view/screens/resume.dart';

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs/screens
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('My Projects')),

          //automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Resume'),
              Tab(text: 'Avg Calculator'),
              Tab(text: 'Project 3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Resume(),
            AvgCalculatorScreen(),
            Screen3(),
          ],
        ),
      ),
    );
  }
}


class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Upload 3rd Project.'),
    );
  }
}
