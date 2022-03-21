import 'package:flutter/material.dart';

class Gifts extends StatefulWidget {
  @override
  _GiftsState createState() => _GiftsState();
}

class _GiftsState extends State<Gifts> {
  var gifts_info = [
    {
      "amount": "N1000 Airtime",
      "image": "assets/airtimes.png",
      "coins": "100,000"
    },
    {"amount": "500mb", "image": "assets/data.png", "coins": "500,000"},
    {
      "amount": "N1000 Recharge Card",
      "image": "assets/cash.png",
      "coins": "200,000"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: gifts_info.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Gifts_Item(
            gift_amount: gifts_info[index]['amount'],
            gift_image: gifts_info[index]['image'],
            gift_coins: gifts_info[index]['coins']);
      },
    );
  }
}

class Gifts_Item extends StatelessWidget {
  final gift_amount;
  final gift_image;
  final gift_coins;

  Gifts_Item({this.gift_amount, this.gift_image, this.gift_coins});
  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              gift_amount,
              style: TextStyle(
                  color: Colors.blue[900],
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Image.asset(
              gift_image,
              height: 100,
            ),
          ),
          Divider(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //  Text(gift_coins),
              Image.asset('assets/scuff coin.png', height: 30),
              Text(
                gift_coins,
                style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
