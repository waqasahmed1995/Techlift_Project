



import 'package:flutter/material.dart';
import 'package:rough_work/utils/routes_name.dart';
import 'package:rough_work/view/screens/coursedetailscreen.dart';
import 'package:rough_work/view/screens/coursescreen.dart';
import 'package:rough_work/view/screens/pdfviewerscreen.dart';
import 'package:rough_work/view/screens/transcriptscreen.dart';

import '../view/screens/LoginUI.dart';
import '../view/screens/SignupUI.dart';
import '../view/screens/dashboard.dart';
import '../view/screens/mybottomnavbar.dart';
import '../view/screens/myprofile.dart';
import '../view/screens/myprojects.dart';
import '../view/screens/profilescreen.dart';
import '../view/screens/settings.dart';
import '../view/screens/studentsdirectory.dart';
import '../view/screens/teachersdirectory.dart';
import '../view/screens/writeapplication.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name){

      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (context) => Login());

      case RouteName.signupScreen:
        return MaterialPageRoute(builder: (context) => Signup());

      case RouteName.dashboardScreen:
        return MaterialPageRoute(builder: (context) => DashboardScreen());

      case RouteName.studentsDir:
        return MaterialPageRoute(builder: (context) => StudentsSearch());

      case RouteName.teachersDir:
        return MaterialPageRoute(builder: (context) => TeachersSearch());

      case RouteName.settingsScreen:
        return MaterialPageRoute(builder: (context) => SettingsScreen());

      case RouteName.writeApplicationScreen:
        return MaterialPageRoute(builder: (context) => WriteApplicationScreen());

      case RouteName.profileScreen:
        return MaterialPageRoute(builder: (context) => ProfileScreen(data: settings.arguments as Map,));

      case RouteName.bottomNavBar:
        return MaterialPageRoute(builder: (context) => MyBottomNavBar());

      case RouteName.myProfile:
        return MaterialPageRoute(builder: (context) => MyProfile());

      case RouteName.myProjects:
        return MaterialPageRoute(builder: (context) => MyProjects());

      case RouteName.courseScreen:
        return MaterialPageRoute(builder: (context) => CourseScreen());

      case RouteName.courseDetailScreen:
        return MaterialPageRoute(builder: (context) => CourseDetailScreen(data: settings.arguments as Map,));

      case RouteName.pdfViewerScreen:
        return MaterialPageRoute(builder: (context) => PdfViewer(data: settings.arguments as Map));

      case RouteName.transcriptScreen:
        return MaterialPageRoute(builder: (context) => TranscriptScreen());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("No Route Defined"))
          );}
        );

    }

  }

}