import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  MyDataTable({
    super.key,
    required this.subject1,
    required this.subject2,
    required this.subject3,
    required this.subject4,
    required this.subject5,
    required this.subject6,
  });

  final String subject1;

  final String subject2;

  final String subject3;

  final String subject4;

  final String subject5;

  final String subject6;

  final TextEditingController subject1Controller = TextEditingController();
  final TextEditingController subject2Controller = TextEditingController();
  final TextEditingController subject3Controller = TextEditingController();
  final TextEditingController subject4Controller = TextEditingController();
  final TextEditingController subject5Controller = TextEditingController();
  final TextEditingController subject6Controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DataTable(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            columns: [
              DataColumn(
                  label: Text(
                'Subjects',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              DataColumn(
                label: Text(
                  'Marks',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Cr.Hrs',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text(subject1)),
                DataCell(
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: subject1Controller,
                    decoration: InputDecoration(
                      hintText: '0',
                    ),
                  ),
                ),
                DataCell(Text('3')),
              ]),
              DataRow(cells: [
                DataCell(Text(subject2)),
                DataCell(
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: subject2Controller,
                    decoration: InputDecoration(
                      hintText: '0',
                    ),
                  ),
                ),

                DataCell(Text('3')),
              ]),
              DataRow(cells: [
                DataCell(Text(subject3)),
                DataCell(
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: subject3Controller,
                    decoration: InputDecoration(
                      hintText: '0',
                    ),
                  ),
                ),

                DataCell(Text('3')),
              ]),
              DataRow(cells: [
                DataCell(Text(subject4)),
                DataCell(
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: subject4Controller,
                    decoration: InputDecoration(
                      hintText: '0',
                    ),
                  ),
                ),

                DataCell(Text('3')),
              ]),
              DataRow(cells: [
                DataCell(Text(subject5)),
                DataCell(
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: subject5Controller,
                    decoration: InputDecoration(
                      hintText: '0',
                    ),
                  ),
                ),
                DataCell(Text('3')),
              ]),
              DataRow(cells: [
                DataCell(Text(subject6)),
                DataCell(
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: subject6Controller,
                    decoration: InputDecoration(
                      hintText: '0',
                    ),
                  ),
                ),
                DataCell(Text('3')),
              ])
            ]),
      ),
    );
  }

  // String? _result = '0' ;
  //
  // void _gpa() {
  //
  //   setState(() {
  //     double _num1 = double.parse(subject1Controller.text);
  //     gradePoints(_num1);
  //     double gp1 =gp*3;
  //     double _num2 = double.parse(subject2Controller.text);
  //     gradePoints(_num2);
  //     double gp2 =gp*3;
  //     double _num3 = double.parse(subject3Controller.text);
  //     gradePoints(_num3);
  //     double gp3 =gp*3;
  //     double _num4 = double.parse(subject4Controller.text);
  //     gradePoints(_num4);
  //     double gp4 =gp*3;
  //     double _num5 = double.parse(subject5Controller.text);
  //     gradePoints(_num5);
  //     double gp5 =gp*3;
  //     double _num6 = double.parse(subject6Controller.text);
  //     gradePoints(_num6);
  //     double gp6 =gp*3;
  //
  //
  //
  //     double _totalgp = (gp1+gp2+gp3+gp4+gp5+gp6) / 6;
  //     double _gpa= _totalgp/18;
  //
  //
  //
  //     _result = _gpa.toString();
  //
  //   });
  // }
  // double gp=0;
  // double gradePoints(double num){
  //   if (num >= 85 && num <=100){
  //     gp = 4.0;
  //   }
  //   if (num >= 80 && num <=84.99){
  //     gp = 3.70;
  //   }
  //   if (num >= 75 && num <=75.99){
  //     gp = 3.30;
  //   }
  //   if (num >= 70 && num <=74.99){
  //     gp = 3.0;
  //   }
  //   if (num >= 65 && num <=69.99){
  //     gp = 2.70;
  //   }
  //   if (num >= 61 && num <=64.99){
  //     gp = 2.30;
  //   }
  //   if (num >= 58 && num <=60.99){
  //     gp = 2.0;
  //   }
  //   if (num >= 55 && num <=57.99){
  //     gp = 1.70;
  //   }
  //   if (num >= 50 && num <=54.99){
  //     gp = 1.00;
  //   }
  //   if (num >= 0 && num <=49.99){
  //     gp = 0;
  //   }
  // return gp;
  // }
}
