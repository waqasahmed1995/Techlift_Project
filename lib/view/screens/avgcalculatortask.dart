import 'package:flutter/material.dart';
import 'package:rough_work/view/custom/my_button.dart';

class AvgCalculatorScreen extends StatefulWidget {
  const AvgCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<AvgCalculatorScreen> createState() => _AvgCalculatorScreenState();
}

class _AvgCalculatorScreenState extends State<AvgCalculatorScreen> {

  TextEditingController _mathMarks = TextEditingController();
  TextEditingController _physicsMarks = TextEditingController();
  TextEditingController _chemistryMarks = TextEditingController();
  String? _result = '0' ;

  void _average() {

    setState(() {
      double _num1 = double.parse(_mathMarks.text);
      double _num2 = double.parse(_physicsMarks.text);
      double _num3 = double.parse(_chemistryMarks.text);

      double _avg = (_num1 + _num2 + _num3) / 3;

      _result = _avg.toString();

    });

  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('Maths : ',style: TextStyle(fontSize: 16),),
                            SizedBox(width: 100),  // Add some spacing between the text field and text widget
                            Container(
                              width: 150,
                              child: TextField(
                                controller: _mathMarks,
                                decoration: InputDecoration(
                                  labelText: 'Enter marks',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('Physics : ',style: TextStyle(fontSize: 16),),
                            SizedBox(width: 90),  // Add some spacing between the text field and text widget
                            Container(
                              width: 150,
                              child: TextField(
                                controller: _physicsMarks,
                                decoration: InputDecoration(
                                  labelText: 'Enter marks',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('Chemistry : ',style: TextStyle(fontSize: 16),),
                            SizedBox(width: 75),  // Add some spacing between the text field and text widget
                            Container(
                              width: 150,
                              child: TextField(
                                controller: _chemistryMarks,
                                decoration: InputDecoration(
                                  labelText: 'Enter marks',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Column(
                      children: [
                        Text('Average Grade of the Student is : $_result',style: TextStyle(fontSize: 18),),
                        SizedBox(height: 100,)
                      ],
                    ),
                    MyButton('Calculate Average', () {_average();}),
                  ],
              ),
          ),
        ),
      ),
    );
  }
}
