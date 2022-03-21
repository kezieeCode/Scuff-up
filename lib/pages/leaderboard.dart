import 'package:flutter/material.dart';
import 'package:scuffup/custom_PageRoute/router.dart';
import 'package:convex_bottom_navigation/convex_bottom_navigation.dart';
import 'package:scuffup/pages/account.dart';
import 'package:scuffup/pages/leaderboard.dart';
import 'package:scuffup/pages/rewards.dart';
import 'package:scuffup/pages/account.dart';
import 'package:scuffup/pages/dashboard.dart';
import 'package:scuffup/pages/gifts.dart';
import 'package:scuffup/AlertDialog/custom_dialog_box.dart';

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  int _currentIndex = 1;
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
  Widget _buildBottomNavigationBar() {
    return ConvexBottomNavigation(
      activeIconColor: Colors.orange,
      inactiveIconColor: Colors.grey,
      textColor: Colors.orangeAccent,
      bigIconPadding: 15.0,
      circleSize: CircleSize.SMALL,
      smallIconPadding: 7.0,
      // circleColor: Colors.orangeAccent,
      barBackgroundColor: Colors.white,
      bigIconOffsetY: -2,
      tabs: [
        TabData(
            icon: Image.asset('assets/home.png'),
            title: "HOME",
            onclick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            }),
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
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/scuff.png'),
                backgroundColor: Colors.white,
                radius: 20,
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
                        '100000',
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
                        '100000',
                        style: TextStyle(
                            color: Colors.orange,
                            fontStyle: FontStyle.italic,
                            fontSize: 12),
                      )),
                ]),
              ],
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
                        child: Text('N45,565,045',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 40),
                        child: Text('given out so far',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
                PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: TabBar(
                    labelColor: Colors.blue[900],
                    indicatorColor: Colors.orangeAccent,
                    tabs: [
                      Tab(
                        text: 'Big Wins',
                      ),
                      Tab(
                        text: 'Recent Wins',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  backgroundImage:
                                      AssetImage('assets/scuff.png'),
                                ),
                                Text(
                                  'Kezie',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  'N3400',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  '4d',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.8,
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  backgroundImage:
                                      AssetImage('assets/NKEM.jpg'),
                                ),
                                Text(
                                  'Lizzie',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  'N3400',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  '7d',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  backgroundImage:
                                      AssetImage('assets/CIDAH.jpg'),
                                ),
                                Text(
                                  'Cidah',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  'N3400',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  '9d',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  backgroundImage:
                                      AssetImage('assets/COOL.JPG'),
                                ),
                                Text(
                                  'Danny',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  'N3400',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  '8d',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  backgroundImage:
                                      AssetImage('assets/scuff.png'),
                                ),
                                Text(
                                  'Kezie',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  'N3400',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  '4d',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  backgroundImage:
                                      AssetImage('assets/COOL.JPG'),
                                ),
                                Text(
                                  'Martins',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  'N3400',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  '4d',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  backgroundImage:
                                      AssetImage('assets/CIDAH.jpg'),
                                ),
                                Text(
                                  'Cidah',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  'N3400',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  '4d',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black12,
                                  backgroundImage:
                                      AssetImage('assets/NKEM.jpg'),
                                ),
                                Text(
                                  'Austin',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  'N3400',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  '4d',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Montserrat'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: _buildBottomNavigationBar(),
        ),
      ),
    );
  }
}
