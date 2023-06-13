import 'package:flutter/material.dart';

import '../custom/mydatatable.dart';

class TranscriptScreen extends StatefulWidget {
  const TranscriptScreen({Key? key}) : super(key: key);

  @override
  State<TranscriptScreen> createState() => _TranscriptScreenState();
}

class _TranscriptScreenState extends State<TranscriptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Transcript')),
      ),
      body: Column(
        children: [
          Text(
            'Semester 1',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          MyDataTable(
              subject1: 'Calculus',
              subject2: 'Physics',
              subject3: 'Islamiat',
              subject4: 'Statisctics',
              subject5: 'Urdu',
              subject6: 'Intro to Computer Science'),
        ],
      ),
    );
  }
}
