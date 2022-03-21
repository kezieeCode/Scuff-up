import 'package:flutter/material.dart';
import 'package:scuffup/components/gifts.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:scuffup/pages/gifts.dart';

class Televion extends StatefulWidget {
  final gift_header;
   final gift_details;
    final gift_features;
     final gift_description;
     final gift_explanation;
     Televion({this.gift_header,this.gift_details,this.gift_features,this.gift_description,this.gift_explanation});
     @override
  

  _TelevionState createState() => _TelevionState();
}

class _TelevionState extends State<Televion> {
  @override
  Widget build(BuildContext context) {
     Widget image_carousel = Container(
      height: 230.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/Tv.jpg'),
          AssetImage('assets/flat.jpg'),
          AssetImage('assets/Plasma.jpg')
         
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 7.0,
        indicatorBgPadding: 7.0,
        dotColor: Colors.orangeAccent,
        dotBgColor: Colors.transparent,
      ),
    );
    return 
    MaterialApp(
          home: Scaffold(
                      body: Stack(
              children: [
                Container(
                  color: Colors.white,
             child:Scrollbar(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        child: Column(
                         children: [
                            Positioned(
            top: 10.0,
            bottom: 0.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 280),
              child: IconButton(icon: Icon(Icons.cancel,size: 55,),color: Colors.green,
              onPressed: (){
                       Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Gift()));
              },
              ),
            ),
        ),
                           Text("${widget.gift_header}",
                           style: TextStyle(
                             color: Colors.blue[900],
                             fontSize: 40,
                             fontWeight: FontWeight.bold,
                             fontFamily: 'Montserrat'
                           ),
                           ),
                           image_carousel, //Database
                           Padding(
                             padding: const EdgeInsets.all(30.0),
                             child: Text('The Items will be sent to you to your address',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                           ),
                           SizedBox(height: 3,),
                           Divider(height: 20,color: Colors.blue,indent: 30,endIndent: 30,),
                           SizedBox(height: 10,),
                           
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             Text('Price: ',
                             style:TextStyle(
                               color:Colors.blue[900],
                               fontSize:24,
                               
                             )
                             ),
                             Image.asset('assets/coin_only.png',
                             height: 50,
                             ),
                             Text('${widget.gift_description}',
                             style: TextStyle(
                               color: Colors.blue[900],
                               fontSize: 20,
                               fontFamily: 'Montserrat'
                             ),
                             )
                           ],),
                             SizedBox(height: 3,),
                           Divider(height: 20,color: Colors.blue,indent: 30,endIndent: 30,),
                           SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(20, 0, 250, 0),
                             child: Text('Features:',
                             style: TextStyle(
                               color: Colors.blue[900],
                               fontSize: 21,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.bold
                             ),
                             ),
                           ),
                             SizedBox(height: 20,),
                            Padding(
                             padding: EdgeInsets.only(left: 20),
                             child: Expanded(
                                                          child: Text('Our Consistent members will stand a chance to win Sweet items like Television sets and many fantabulous gifts.',
                               maxLines: 10,
                               overflow: TextOverflow.clip,
                               style: TextStyle(
                                 color: Colors.blue[900],
                                 fontSize: 20,
                                 fontFamily: 'Montserrat',
                               ),
                               ),
                             ),
                           ),
                           SizedBox(height: 20,),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(20, 0, 250, 0),
                             child: Text('Description:',
                             style: TextStyle(
                               color: Colors.blue[900],
                               fontSize: 17,
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.bold
                             ),
                             ),
                           ),
                            Padding(
                             padding: EdgeInsets.only(left: 20),
                             child: Expanded(
                                                          child: Text('${widget.gift_explanation}',
                               maxLines: 10,
                               overflow: TextOverflow.clip,
                               style: TextStyle(
                                 color: Colors.blue[900],
                                 fontSize: 20,
                                 fontFamily: 'Montserrat',
                               ),
                               ),
                             ),
                           ),
                         ],
                        ),
                      ),
                    );
                  },
                ),
        )
        ),
       
        ],
      ),
      bottomSheet: Container(
        color: Colors.white24,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                color: Colors.orangeAccent,
                child: Text('Confirm',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat'
                ),
                ),
                onPressed: (){

                },
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 10),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                color: Colors.orangeAccent,
                child: Text('Cancel',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat'
                ),
                ),
                onPressed: (){
                       Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Gift()));
                },
              ),
            )
          ],
        ),
      ),
          ),
    );
  }
}