import 'dart:async';

import 'package:flutter/material.dart';

import 'package:scuffup/custom_PageRoute/custom_dialog.dart';
import 'package:convex_bottom_navigation/convex_bottom_navigation.dart';
import 'package:scuffup/custom_PageRoute/router.dart';
import 'package:scuffup/pages/account.dart';
import 'package:scuffup/pages/rewards.dart';
import 'package:scuffup/pages/leaderboard.dart';
import 'package:scuffup/pages/gifts.dart';
import 'package:scuffup/components/scratches.dart';
import 'package:scuffup/custom_PageRoute/router.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:scuffup/pages/Instruct.dart';

class Home extends StatefulWidget {
  Home ({Key key, this.controller,}): super(key: key);
  final ScrollController controller;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  int _cash = 100000;
  int _coins = 100000;
  // List<Widget> _children = [
  //   Container(
  //     color: Colors.red,
  //   ),
  //   Container(
  //     color: Colors.green,
  //   ),
  //   Container(
  //     color: Colors.blue,
  //   ),
  // ];
  final interval = Duration(seconds: 12);
  final int timerMaxSeconds = 1;
  int currentSeconds = 0;

  String get timertext => '${((timerMaxSeconds - currentSeconds) ~/1).toString().padLeft(2,'0')}:${((timerMaxSeconds - currentSeconds) % 1).toString().padLeft(2, '0')}';
   startTimeout([int milliseconds]){
     var duration = interval;
     Timer.periodic(duration, (timer){
       setState(() {
        print(timer.tick);
        currentSeconds = timer.tick;
        if(timer.tick >= timerMaxSeconds) timer.cancel(); 
       });
     });
   }
   @override
   void initState(){
     startTimeout();
     super.initState();
   }
  
  Widget _buildBottomNavigationBar() {
    return ConvexBottomNavigation(
      activeIconColor: Colors.orangeAccent,
      inactiveIconColor: Colors.grey,
      textColor: Colors.orangeAccent,
      bigIconPadding: 15.0,
      circleSize: CircleSize.SMALL,
      smallIconPadding: 7.0,
      circleColor: Colors.orangeAccent,
      barBackgroundColor: Colors.white,
      bigIconOffsetY: -2,
      tabs: [
        TabData(
          icon: Image.asset('assets/home.png'),
          title: "HOME",
        ),
        TabData(
            icon: Image.asset('assets/gld.png'),
            title: "LEADERBOARD",
            onclick: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LeaderBoard()));
            }),
        TabData(
            icon: Image.asset('assets/orange.png'),
            title: "REWARDS",
            onclick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Rewards()));
            }),
        TabData(
            icon: Image.asset('assets/Gifts.png'),
            title: 'GIFTS',
            onclick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Gift()));
            }),
      ],
      onTabChangedListener: (position) {
        setState(() {
          _currentIndex = position;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/scuff.png'),
            backgroundColor: Colors.white,
            
            child: InkWell(
              onTap: () {
                Navigator.push(context, SlideRightRoute(widget: Account()));
              },
            ),
          ),
        ),
        backgroundColor: Colors.orangeAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              Image.asset(
                'assets/for_coin.png',
                fit: BoxFit.contain,
                height: 32,
                width: 100,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(45, 13, 0, 0),
                  child: Text(
                    '$_coins',
                    style: TextStyle(
                        color: Colors.green,
                        fontStyle: FontStyle.italic,
                        fontSize: 12),
                  )),
            ]),
            SizedBox(
              width: 40,
            ),
            Stack(children: [
              Image.asset(
                'assets/for_cash.png',
                fit: BoxFit.contain,
                height: 32,
                width: 100,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(45, 13, 0, 0),
                  child: Text(
                    '$_cash',
                    style: TextStyle(
                        color: Colors.orange,
                        fontStyle: FontStyle.italic,
                        fontSize: 12),
                  )),
            ]),
          ],
        ),
      ),
      body: 
         Container(
          color: Colors.white,
          child: Scrollbar(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Material(
                  color: Colors.white,
                  child: StickyHeaderBuilder(
                    // controller: controller,
                    builder: (BuildContext context, double stuckAmount){
                      stuckAmount = 1.0 - stuckAmount.clamp(0.0, 1.0);
                      return Center(
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(0, 12, 0, 10),
                                                                                              child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
        child: MaterialButton(
          minWidth: 300,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.pushReplacement(
                context, new SlideRightRoute(widget: Home()));
           
          },
          child: Text("Next drawing in $timertext " ,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
                                              ),
                      );
                    },
                    content: 
                      Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            showDialog(
                             context: context,
                builder: (BuildContext context) {
                  return Instruct();
                });
                            Navigator.pushReplacement(context,
                                new SlideRightRoute(widget: Scratch()));
                            setState(() {
                              // image.removAt(index);
                              setState(() {
                                _cash++;
                              });
                            });
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image(
                              image: AssetImage('assets/logo2.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image(
                              image: AssetImage('assets/logo3.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image(
                              image: AssetImage('assets/logo5.jpg'),
                            ),
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                )
                    ),
                  
                );
              },
            ),
          ),
        ),
      
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
