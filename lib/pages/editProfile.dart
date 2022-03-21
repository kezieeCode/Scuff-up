import 'package:flutter/material.dart';
import 'package:scuffup/custom_PageRoute/router.dart';
import 'package:scuffup/pages/account.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: Text('Edit Profile',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
            
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                                      children:[ CircleAvatar(
                      maxRadius: 70,
                      backgroundColor: Colors.grey,
                      backgroundImage:AssetImage('assets/NKEM.jpg',
                      
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 90, 0, 0),
                      child: IconButton(icon: Icon(Icons.camera),
                      iconSize: 60,
                      color: Colors.orangeAccent,
                      onPressed: (){},),
                    )
                    ]
                  )
    ],)
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 10,
          ),
          Expanded(
            child: Container(
              // color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    
        decoration: InputDecoration(
          fillColor: Colors.blue,
          hintText: 'First',
          border: OutlineInputBorder(),
          labelText: 'First Name',
          isDense: false,                      // Added this
          contentPadding: EdgeInsets.all(8),  // Added this
        ),
          ),
          
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    
        decoration: InputDecoration(
          fillColor: Colors.blue,
          hintText: 'Second',
          border: OutlineInputBorder(),
          labelText: 'Second Name',
          isDense: false,                      // Added this
          contentPadding: EdgeInsets.all(8),  // Added this
        ),
          ),
          
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    
        decoration: InputDecoration(
          fillColor: Colors.blue,
          hintText: 'Last',
          border: OutlineInputBorder(),
          labelText: 'Last name',
          isDense: false,                      // Added this
          contentPadding: EdgeInsets.all(8),  // Added this
        ),
          ),
          
                ),
                  Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.orangeAccent,
        child: MaterialButton(
          minWidth: 200,
          height: 60,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            
          },
          child: Text("Update Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'Montserrat',fontSize: 20)),
        ),
      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
