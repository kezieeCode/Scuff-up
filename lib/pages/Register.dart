import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:scuffup/pages/dashboard.dart';
import 'package:scuffup/custom_PageRoute/custom_dialog.dart';
import 'package:scuffup/AlertDialog/custom_dialog_box.dart';
import 'package:scuffup/components/loginPage.dart';

class Register extends StatefulWidget {
   Register({Key key, this.title}) : super(key: key);

   final String title;
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
   Widget build(BuildContext context) {

     final _screenSize = MediaQuery.of(context).size;
     
     final text = Text('Sign up',
     style: TextStyle(
       color: Colors.blue[900],
       fontSize: 40,
       fontFamily: 'Montserrat',
       fontWeight: FontWeight.bold,
     ),
     );
     final textinfo = Text('Create an account',
      style: TextStyle(
        color: Colors.blue[800],
        fontSize: 20,
        fontFamily: 'Montserrat'
      ),
     );

        final emailField = ClipRect( 
          child:TextField(
          obscureText: false,
          style: style,
          autocorrect: true,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hoverColor: Colors.white,
              prefixIcon: Icon(
                Icons.mail
              ),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
          ),        
        );
         final firstName = ClipRect( 
          child:TextField(
          obscureText: false,
          style: style,
          autocorrect: true,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hoverColor: Colors.white,
              prefixIcon: Icon(
                Icons.supervised_user_circle
              ),
              hintText: "First Name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
          ),        
        );
         final lastName = ClipRect( 
          child:TextField(
          obscureText: false,
          style: style,
          autocorrect: true,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hoverColor: Colors.white,
              prefixIcon: Icon(
                Icons.supervised_user_circle
              ),
              hintText: "Last Name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
          ),        
        );
         final mobile = ClipRect( 
          child:TextField(
          obscureText: false,
          style: style,
          autocorrect: true,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hoverColor: Colors.white,
              prefixIcon: Icon(
                Icons.phone_android
              ),
              hintText: "Mobile no",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
          ),        
        );
         final firstPassword = ClipRect( 
          child:TextField(
          obscureText: true,
          style: style,
          autocorrect: true,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hoverColor: Colors.white,
              prefixIcon: Icon(
                Icons.lock
              ),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
          ),        
        );
         
        final passwordField = ClipRect( 
          
          child: TextField(
          obscureText: true,
          autocorrect: true,
          
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Confirm Password",
              prefixIcon: Icon(
                Icons.security
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        ),
        );
        final loginButon = ClipRect(
          child:Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.purple[900],
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                
            },
            child: Text("Register",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          ),
        );
        final reLog = InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
          },
          child:ClipRect(
          child: Text('Already Registered? Login',
        style: TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.blue[900],
          fontSize: 20.0
        ),
        ),
        )
        );
        

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body:Center(
            child:Container(
              color: Colors.orangeAccent,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                 child: Scrollbar(
                 child:  ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index){
            return Container(
                   child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    text,
                    SizedBox(height: 18),
                    textinfo,
                    SizedBox(
                      height: 240.0,
                      child: ClipRect(
                        child:Image.asset(
                        "assets/scuff.png",
                        fit: BoxFit.contain,
                      ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    emailField,
                    SizedBox(height: 25.0),
                    firstName,
                     SizedBox(height: 25.0),
                    lastName,
                     SizedBox(height: 25.0),
                     mobile,
                      SizedBox(height: 25.0),
                      firstPassword,
                       SizedBox(height: 25.0),
                       passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButon,
                     SizedBox(
                      height: 20.0,
                    ),
                    reLog,
                     SizedBox(
                      height: 20.0,
                    ),
                     
                  ],
                  ),
                   );
                
                 }
                 ),
              )
              ),
            ),
          ),
        ); 
  }
}