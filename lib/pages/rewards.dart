import 'package:flutter/material.dart';
import 'package:scuffup/pages/account.dart';
import 'package:scuffup/pages/dashboard.dart';
import 'package:scuffup/custom_PageRoute/router.dart';
import 'package:convex_bottom_navigation/convex_bottom_navigation.dart';
import 'package:scuffup/pages/gifts.dart';
import 'package:scuffup/pages/leaderboard.dart';

class Rewards extends StatefulWidget {
  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  int _currentIndex = 2;
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
    return Scaffold(
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
      body: Container(
        color: Colors.white10,
        child: Scrollbar(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, builder) {
              return Container(
                child: Padding(
                  padding: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 17, 0, 0),
                        height: 100,
                        width: double.maxFinite,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/invite_o.png',
                                height: 70,
                              ),
                              VerticalDivider(
                                color: Colors.grey[400],
                                endIndent: 10.0,
                                indent: 12.0,
                                thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Take a Survey',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Over 700,000 coins are  ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text('available for you',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          elevation: 7,
                        ),
                      ),
                      SizedBox(height: 1),
                      Container(
                        //  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                        height: 100,
                        width: double.maxFinite,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/forbidden.png',
                                height: 70,
                              ),
                              VerticalDivider(
                                color: Colors.grey[400],
                                endIndent: 10.0,
                                indent: 12.0,
                                thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Invite a Friend',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text(
                                        'Over 800,000 coins are available ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                        'for you on the friends you invite ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          elevation: 7,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                        height: 100,
                        width: double.maxFinite,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/invite_o.png',
                                height: 70,
                              ),
                              VerticalDivider(
                                color: Colors.grey[400],
                                endIndent: 10.0,
                                indent: 12.0,
                                thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Watch a Video',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text(
                                        'Over 1,000,000 cash are available ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text('for you as you watch a video ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          elevation: 7,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                        height: 100,
                        width: double.maxFinite,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/invite_o.png',
                                height: 70,
                              ),
                              VerticalDivider(
                                color: Colors.grey[400],
                                endIndent: 10.0,
                                indent: 12.0,
                                thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Watch a Video',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text(
                                        'Over 1,000,000 coins are available ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                        'for you when you watch a video ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          elevation: 7,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                        height: 100,
                        width: double.maxFinite,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/youtube.png',
                                height: 70,
                              ),
                              VerticalDivider(
                                color: Colors.grey[400],
                                endIndent: 10.0,
                                indent: 12.0,
                                thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Subscribe to our Channel',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text(
                                        'Get 300,000 coins when you subscribe ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text('and watch on YouTube ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          elevation: 7,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                        height: 100,
                        width: double.maxFinite,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/twitterpng.png',
                                height: 70,
                              ),
                              VerticalDivider(
                                color: Colors.grey[400],
                                endIndent: 10.0,
                                indent: 12.0,
                                thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Follow us on Twitter',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Get 300,000 coins  ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                        'when you follow us on twitter ',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          elevation: 7,
                        ),
                      ),
                    ],
                  ),
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
