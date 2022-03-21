import 'package:flutter/material.dart';
import 'package:scuffup/components/televison.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var gifts_info = [
    
     {
      "amount": "Flatscreen Tv",
      "image": "assets/Plasma.jpg",
      "coins": "300,000",
      "explanation": "Win Flat screen Tv and beautiful home gadgets all for just won coins"
    }, 
    {
    "amount":"N1000 Airtime",
    "image":"assets/airtimes.png",
    "coins":"100,000",
    "explanation": "Win Big Airtime amounts for as much coins as you get"
  },
   {
    "amount":"500mb",
    "image":"assets/data.png",
    "coins":"500,000",
    "explanation": "Win Big Data subscriptions all for just coins "
  },
   {
    "amount":"N1000 Recharge Card",
    "image":"assets/cash.png",
    "coins":"200,000",
    "explanation": "Win Recharge cards Just by getting"
    
  },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: gifts_info.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index){
        return Product_Item(
          gift_amount: gifts_info[index]['amount'],
           gift_image: gifts_info[index]['image'],
            gift_coins: gifts_info[index]['coins'],
            gift_explanation: gifts_info[index]['explanation']
        );
      },
    );
  }
}

class Product_Item extends StatelessWidget {
  final gift_amount;
  final gift_image;
  final gift_coins;
  final gift_explanation;

  Product_Item({
    this.gift_amount,
    this.gift_image,
    this.gift_coins,
    this.gift_explanation,
  });
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 100/100,
          child: Card(
        borderOnForeground: true,
       
        child: Hero(
          tag: gift_amount,
                  child: Material(
                                      child: InkWell(
                                        onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Televion(
             gift_header: gift_amount,
             gift_description: gift_coins,
              gift_explanation: gift_explanation,
            ))),
                                                                              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                child: Text(gift_amount,
                style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                ),
                ), 
              ),
             Padding(
               padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
               child:  Image.asset(gift_image,
              height: 100,
              ),
             ),
             Divider(height: 7,),
             Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                    //  Text(gift_coins),
                    Image.asset('assets/scuff coin.png',
                    height:40
                    ),
                     Text(gift_coins,
                     style: TextStyle(
                       color: Colors.blue[900],
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold
                     ),
                     ),
                 ],
             )
             
             
            ],
          ),
                                      ),
                  ),
        ),
      ),
    );
  }
}