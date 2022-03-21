import 'package:flutter/material.dart';
import 'package:scuffup/custom_PageRoute/router.dart';
import 'package:scuffup/pages/account.dart';
import 'package:scuffup/pages/dashboard.dart';
import 'package:scuffup/pages/leaderboard.dart';
import 'package:scuffup/pages/rewards.dart';
import 'package:scuffup/components/gifts.dart';
import 'package:scuffup/components/products.dart';
import 'package:convex_bottom_navigation/convex_bottom_navigation.dart';
import 'package:scuffup/components/televison.dart';
class Gift extends StatefulWidget {
  @override
  _GiftState createState() => _GiftState();
}

class _GiftState extends State<Gift> {
  int _currentIndex = 3;
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
      home: AspectRatio(
        aspectRatio: 100/100,
              child: DefaultTabController(
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
                  PreferredSize(
                    preferredSize: Size.fromHeight(50),
                    child: TabBar(
                      labelColor: Colors.blue[900],
                      indicatorColor: Colors.orangeAccent,
                      tabs: [
                        Tab(
                          text: 'Gifts',
                        ),
                        Tab(
                          text: 'Products',
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Gifts(),
                        ),
                        Container(
                          color: Colors.white,
                          child: Products(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomNavigationBar(),
          ),
        ),
      ),
    );
  }
}
