import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../custom/my_button.dart';


class WriteApplicationScreen extends StatefulWidget {
  const WriteApplicationScreen({Key? key}) : super(key: key);

  @override
  State<WriteApplicationScreen> createState() => _WriteApplicationScreenState();
}

class _WriteApplicationScreenState extends State<WriteApplicationScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Write an Application',
              style: TextStyle(
                fontSize: 24,
              )),
        ),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title: ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10))),
                minLines: 1,
                maxLines: 2,
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Message: ',
                  style: TextStyle(
                  fontSize: 18,
                ),),
              ),
              TextFormField(
                controller: messageController,
                decoration: InputDecoration(
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10))),
                maxLines: 15,
              ),
              SizedBox(height: 50,),
              Center(
                child: MyButton('Submit', () {
                  messageSubmit();
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  void messageSubmit(){

    if(titleController.text.isEmpty){

      Flushbar(
        title: 'Error',
        messageText: Text('Please write the Title'),
        duration: Duration(seconds: 2),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }

    if(messageController.text.isEmpty){

      Flushbar(
        title: 'Error',
        messageText: Text('Please write a Message'),
        duration: Duration(seconds: 2),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }

      Flushbar(
        title: 'Thankyou',
        messageText: Text('YOur Application has been submitted.'),
        duration: Duration(seconds: 2),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);

    titleController.clear();
    messageController.clear();

    return;
  }
}
