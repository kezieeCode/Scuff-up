import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter/material.dart';
class some extends StatefulWidget {
  @override
  _someState createState() => _someState();
}

class _someState extends State<some> {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 10,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(2, 40, 70, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Image.asset('assets/for_cash.png', height: 47,),
                   Image.asset('assets/for_coin.png', height: 47,),
                

              ],
              ),
            ),
            
          );
  }
}
 