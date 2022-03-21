import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var cards = [
    {"image": "assets/logo2.jpg"},
    {"image": "assets/logo3.jpg"},
    {"image": "assets/logo4.jpg"},
    {"image": "assets/logo5.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (BuildContext context, int index) {
        return Cards(card_images: cards[index]['images']);
      },
    );
  }
}

class Cards extends StatelessWidget {
  final card_images;
  Cards({this.card_images});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
