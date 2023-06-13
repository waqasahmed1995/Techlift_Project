import 'package:flutter/material.dart';
import '../../utils/routes_name.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {


  List<String> pdfPaths=['https://www.tutorialspoint.com/git/git_tutorial.pdf',
    'https://www.tutorialspoint.com/flutter/flutter_tutorial.pdf',
    'https://www.tutorialspoint.com/android/android_tutorial.pdf',
    'https://riptutorial.com/Download/kotlin.pdf',
    'https://www.tutorialspoint.com/java/java_tutorial.pdf'];

  List<String>  bookNames=['Git - Distributed Version Control System',
  'Flutter - Open Source Framework by Google',
  'Android Development',
  'Kotlin - Programming Language',
  'Java - Programming Language'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Books Directory')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: pdfPaths.length,
              itemBuilder: (context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        RouteName.pdfViewerScreen,
                      arguments: {
                          'path' : pdfPaths[index].toString(),
                      }
                    );
                  },
                  child: ListTile(
                    title: Text(bookNames[index].toString()),
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
