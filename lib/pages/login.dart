import 'package:flutter/material.dart';
import 'package:scuffup/components/loginPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scuff up Login',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoginPage(),
    );
  }
}