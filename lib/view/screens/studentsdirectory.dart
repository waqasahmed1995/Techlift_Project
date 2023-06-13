

import 'package:flutter/material.dart';

import '../../models/studentsmodel.dart';
import '../../utils/routes_name.dart';

class StudentsSearch extends StatefulWidget {
  const StudentsSearch({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StudentsSearchState createState() => _StudentsSearchState();
}

class _StudentsSearchState extends State<StudentsSearch> {
  // List<String> items = [
  //   'Apple',
  //   'Banana',
  //   'Orange',
  //   'Strawberry',
  //   'Watermelon',
  //   'Avogadro',
  //   'Ananas',
  // ];
  List<StudentsModel> filteredItems = [];

  @override
  void initState() {
    filteredItems.addAll(teachers);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<StudentsModel> filteredList = [];
    filteredList.addAll(teachers);
    if (query.isNotEmpty) {
      filteredList.retainWhere((students) =>
          students.name!.toLowerCase().contains(query.toLowerCase()));
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
          title: Center(child: const Text('Students Directory')),
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
                          RouteName.profileScreen,
                          arguments: {
                            'name': filteredItems[index].name.toString(),
                            'age':filteredItems[index].age.toString(),
                            'phone':filteredItems[index].phone.toString(),
                            'course':filteredItems[index].course.toString(),
                          });
                    },
                    child: ListTile(
                      title: Text(filteredItems[index].name.toString()),
                      subtitle: Text('Age: ${filteredItems[index].age.toString()}'),
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
