

import 'package:flutter/material.dart';

import '../../utils/routes_name.dart';
import '../custom/my_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
                'My Profile',
                () {
                  Navigator.pushNamed(context, RouteName.myProfile);
                },
                ),
            SizedBox(height: 50,),
            MyButton(
              'Logout',
              () => Navigator.pushNamed(context, RouteName.loginScreen),
            )
          ],
        ),
      ),
    );
  }
}
