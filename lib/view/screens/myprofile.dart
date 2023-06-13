
import 'dart:convert';
import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../custom/my_button.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  late TextEditingController nameController = TextEditingController();
  late TextEditingController phoneController = TextEditingController(text: 'Hello phone');
  late TextEditingController addressController = TextEditingController(text: 'Hello address');
  late TextEditingController ageController = TextEditingController(text: 'Hello age');


  bool nameEditable = true;
  bool phoneEditable = true;
  bool addressEditable = true;
  bool ageEditable = true;
  
  File? _image ;
  final picker = ImagePicker();

  Future<void> getImage () async{
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(()  {
      if(pickedImage != null){
        _image = File(pickedImage.path);
      }
      else{
        print('No Image Selected');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getChanges();
  }

  void getChanges() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    nameController.text = prefs.getString('name')!;
    phoneController.text = prefs.getString('phone')!;
    addressController.text = prefs.getString('address')!;
    ageController.text = prefs.getString('age')!;
    String? savedImage = prefs.getString('image');

    setState(() {
      if(savedImage != null){
        _image  = File(savedImage);
      }
    });
  }

  Future<void> saveChanges() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

      prefs.setString('name', nameController.text);
      prefs.setString('phone', phoneController.text);
      prefs.setString('address', addressController.text);
      prefs.setString('age', ageController.text);
      prefs.setString('image', _image!.path);

      Flushbar(
      title: 'Success',
      messageText: Text('Data Updated Successfully'),
      duration: Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.blue,
      )..show(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Profile')),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox(
              height: 20,
            ),
            Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 100,
                    backgroundColor: Colors.transparent,
                    backgroundImage: _image != null ? Image.file(_image!,).image : AssetImage('images/avatar.jpg'),
                    //child: _image == null ? Text('data') : Image.file(_image!,fit: BoxFit.cover,),

                  ),
                  Positioned(
                    right: -5,
                    top: -5,
                    child: IconButton(
                        onPressed:getImage, //pickImage,
                        icon: Icon(Icons.edit_outlined)),
                  ),
                ]
            ),
            SizedBox(height: 30),
            TextField(
              controller: nameController,
              readOnly: nameEditable,
              decoration: InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.text_fields),
                suffixIcon: IconButton(
                  icon: Icon(nameEditable ? Icons.lock : Icons.lock_open),
                  onPressed: () {
                    // Toggle the value of the `nameEditable` property.
                    setState(() {
                      nameEditable = !nameEditable;
                    });
                  },
                ),
              ),
            ),
                SizedBox(height: 30),
              TextField(
                 controller: phoneController,
                readOnly: phoneEditable,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: IconButton(
                    icon: Icon(phoneEditable ? Icons.lock : Icons.lock_open),
                    onPressed: () {
                      // Toggle the value of the `editable` property.
                      setState(() {
                        phoneEditable = !phoneEditable;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: addressController,
                readOnly: addressEditable,
                decoration: InputDecoration(
                  labelText: 'Address',
                  prefixIcon: Icon(Icons.location_on),
                  suffixIcon: IconButton(
                    icon: Icon(addressEditable ? Icons.lock : Icons.lock_open),
                    onPressed: () {
                      // Toggle the value of the `editable` property.
                      setState(() {
                        addressEditable = !addressEditable;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: ageController,
                readOnly: ageEditable,
                decoration: InputDecoration(
                  labelText: 'Age',
                  prefixIcon: Icon(Icons.cake),
                  suffixIcon: IconButton(
                    icon: Icon(ageEditable ? Icons.lock : Icons.lock_open),
                    onPressed: () {
                      // Toggle the value of the `editable` property.
                      setState(() {
                        ageEditable = !ageEditable;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 50,),
              MyButton('Save Changes', saveChanges,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
