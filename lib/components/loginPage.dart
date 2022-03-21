import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'package:scuffup/pages/dashboard.dart';
import 'package:scuffup/custom_PageRoute/custom_dialog.dart';
import 'package:scuffup/AlertDialog/custom_dialog_box.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:scuffup/pages/Register.dart';
import 'package:scuffup/custom_PageRoute/router.dart';
import 'package:scuffup/AlertDialog/custom_dialog_box.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:vector_math/vector_math_geometry.dart';
import 'package:scuffup/pages/forgotpass.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visible = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final controller = PageController();
  bool bigScreen = true;
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future userLogin() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;

    // SERVER LOGIN API URL
    var url = 'https://scuffup.000webhostapp.com/login_user.php';

    // Store all data with Param Name.
    var data = {'email': email, 'password': password};

    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If the Response Message is Matched.
    if (message == 'Login Matched') {
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Navigate to Profile Screen & Sending Email to Next Screen.
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  CustomDialogBox(email: emailController.text)));
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      setState(() {
        AwesomeDialog(
            context: context,
            animType: AnimType.LEFTSLIDE,
            headerAnimationLoop: false,
            dialogType: DialogType.SUCCES,
            title: 'Wow you won some Coin',
            desc: 'You won some coin check your dashboard to see them',
            btnOkOnPress: () {
              debugPrint('OnClcik');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            btnOkIcon: Icons.check_circle,
            onDissmissCallback: () {
              debugPrint('Dialog Dissmiss from callback');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            })
          ..show();
      });

      // Showing Alert Dialog with Response JSON Message.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(message),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    final text = Text(
      'Login',
      style: TextStyle(
        color: Colors.blue[900],
        fontSize: 40,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
      ),
    );
    final textinfo = Text(
      'Log in to your account',
      style: TextStyle(
          color: Colors.blue[800], fontSize: 20, fontFamily: 'Montserrat'),
    );

    final emailField = ClipRect(
      child: TextField(
        obscureText: false,
        style: style,
        autocorrect: true,
        controller: emailController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hoverColor: Colors.white,
            prefixIcon: Icon(
              Icons.verified_user,
              color: Colors.green,
            ),
            hintText: "Username",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      ),
    );
    final passwordField = ClipRect(
      child: TextField(
        obscureText: true,
        autocorrect: true,
        controller: passwordController,
        style: style,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Password",
            prefixIcon: Icon(Icons.security, color: Colors.green),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      ),
    );
    final loginButon = ClipRect(
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.purple[900],
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.pushReplacement(
                context, new SlideRightRoute(widget: Home()));
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDialogBox(
                    title: "Welcome Kezie",
                    descriptions:
                        "21 scratches for you to play in a day, Scratch 4 in the morning, 4 in the afternoon, 4 evening",
                    text: "Play",
                  );
                });
                
          },
          child: Text("Login",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
    );
    final forgotpass = InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Forgot()));
      },
      child:ClipRect(
      child: Text(
        'Forgot Password?',
        style: TextStyle(
            fontFamily: 'Montserrat', color: Colors.blue[900], fontSize: 20.0),
      ),
    ));
    final register = InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Register()));
      },
      child: ClipRect(
        child: Text(
          'Register here',
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.blue[900],
              fontSize: 20.0),
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
              Container(
            // color: Colors.orangeAccent,
            decoration: new BoxDecoration(
              // color: Colors.orange,
               image: new DecorationImage(
               image: new AssetImage("assets/scuff.png"),
              
               fit: BoxFit.fill,
            
              ),
              
              ),
            child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Scrollbar(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                text,
                SizedBox(height: 18),
                textinfo,
                SizedBox(
                  height: 240.0,
                  child: ClipRect(
                    child: Image.asset(
                      "assets/scuff.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 20.0,
                ),
                forgotpass,
                SizedBox(
                  height: 20.0,
                ),
                register
              ],
            ));
          },
        ),
                )),
          ),
          ]
      ),
    );
  }
}
 // Offstage(
                                //   offstage: stuckAmount<= 0.0,
                                //   child: Opacity(
                                //     opacity: stuckAmount,
                                //     child: IconButton(
                                //       icon: Icon(Icons.favorite,color:Colors.white),
                                //       onPressed: () =>Scaffold.of(context).showSnackBar(SnackBar(content: Text('show color'))),
                                //     ),
                                //   ),
                                // )
