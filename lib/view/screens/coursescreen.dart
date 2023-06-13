import 'package:flutter/material.dart';

import '../../models/coursesmodel.dart';
import '../../utils/routes_name.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key, }) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {

  List<CoursesModel> filteredItems=[];

  @override
  void initState() {
    filteredItems.addAll(courses);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<CoursesModel> filteredList = [];
    filteredList.addAll(courses);
    if (query.isNotEmpty) {
      filteredList.retainWhere((courses) =>
          courses.courseName!.toLowerCase().contains(query.toLowerCase()));
    }

    setState(() {
      filteredItems.clear();
      filteredItems.addAll(filteredList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Course Directory')),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              decoration: const InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        RouteName.courseDetailScreen,
                        arguments: {
                          'name':filteredItems[index].courseName.toString(),
                          'credits': filteredItems[index].creditHours.toString(),
                          'instructor' : filteredItems[index].courseInstructor.toString(),
                        }
                    );
                  },
                  child: ListTile(
                    title: Text(filteredItems[index].courseName.toString()),
                    //subtitle: Text(filteredItems[index].creditHours.toString() + '\n' + filteredItems[index].courseInstructor.toString()),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
