

import 'package:flutter/material.dart';
import 'package:rough_work/utils/routes.dart';
import 'package:rough_work/utils/routes_name.dart';


void main() {

  runApp(const MyMainPage());
}

class MyMainPage extends StatelessWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: MyProfile(),
      initialRoute: RouteName.loginScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
