import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:scuffup/custom_PageRoute/router.dart';
import 'package:scuffup/pages/editProfile.dart';
import 'package:scuffup/pages/Invite.dart';
import 'package:scuffup/pages/Redeem.dart';
import 'package:scuffup/pages/History.dart';
import 'package:scuffup/pages/settings.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final int _coins = 100000;
  final int _cash = 100000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: Text('Account Profile',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 0, 10),
                      child: CircleAvatar(
                        backgroundImage:AssetImage('assets/NKEM.jpg'),
                        maxRadius: double.infinity,
                        // foregroundColor: Colors.orange,
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            20,
                            90,
                            0,
                          ),
                          child: Text(
                            'Kezie CodeZ',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900]),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 90, 0),
                          child: Text(
                            '09012243093',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 90, 0),
                          child: RaisedButton(
                            color: Colors.orangeAccent,
                            onPressed: () {
                              Navigator.push(context,
                                  SlideRightRoute(widget: EditProfile()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.orangeAccent)),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Expanded(
            child: Container(
              height: 40,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 70, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(children: [
              Image.asset(
                'assets/for_coin.png',
                fit: BoxFit.contain,
                height: 32,
                
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(37, 13, 10, 0),
                  child: Text(
                    '$_coins',
                    style: TextStyle(
                        color: Colors.orange,
                        fontStyle: FontStyle.italic,
                        fontSize: 12),
                  )),
            ]), Stack(children: [
              Image.asset(
                'assets/for_cash.png',
                fit: BoxFit.contain,
                height: 32,
              
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(37, 13, 10, 0),
                  child: Text(
                    '$_cash',
                    style: TextStyle(
                        color: Colors.green,
                        fontStyle: FontStyle.italic,
                        fontSize: 12),
                  )),
            ]),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 10,
            color: Colors.grey[300],

            //  padding: EdgeInsets.fromLTRB(8, 0, 260, 0),
          ),
          Container(
            height: 70,
            color: Colors.white,
            // child: Padding(
            //   padding: EdgeInsets.fromLTRB(10, 0, 240, 0),
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text('Your N3000 cash',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold)),
                      ),
                      Text('Get 3000 cash to redeem',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontFamily: 'Montserrat',
                                )),
                    ],
                  ),
                  Image.asset('assets/cash.png')
                ],
              ),
            ),
          ),
          Container(
            height: 10,
            color: Colors.grey[300],
          ),
          Container(
            height: 70,
            color: Colors.white,
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Column(
                      children: [
                        Text('Your N3000 cash',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold)),
                                Text('Get 3000,000 coin to redeem',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontFamily: 'Montserrat',
                                )),
                      ],
                    ),
                  ),
                  Image.asset('assets/coin_only.png')
                ],
              ),
            ),
          ),
          Container(
            height: 10,
            color: Colors.grey[300],
          ),
          Container(
            height: 40,
            color: Colors.white,
            child: InkWell(
              onTap: (){
               Navigator.push(context, SlideRightRoute(widget: Invite()));
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 220, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/forbidden.png'),
                    Text('Invite Friends',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 10,
            color: Colors.grey[300],
          ),
          Container(
            height: 40,
            color: Colors.white,
            child: InkWell(
              onTap: (){
                 Navigator.push(context, SlideRightRoute(widget: Redeem()));
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 220, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/redeem.png'),
                    Text('Redeem Cash',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 10,
            color: Colors.grey[300],
          ),
          Container(
            height: 40,
            color: Colors.white,
            child: InkWell(
              onTap: (){
                 Navigator.push(context, SlideRightRoute(widget: History()));
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 220, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/MIGRAte.png'),
                    Text('Order History',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 10,
            color: Colors.grey[300],
          ),
          Container(
            height: 40,
            color: Colors.white,
            child: InkWell(
              onTap: (){
                 Navigator.push(context, SlideRightRoute(widget: Settings()));
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 248, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/set.png'),
                    Text('Settings',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
