import 'package:flutter/material.dart';
import 'package:scuffup/pages/account.dart';

class Redeem extends StatelessWidget {
  const Redeem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(children: [
            Center(
              child: Column(
                children: [
                
                ],
              ),
            ),
             Positioned(
              top: 10.0,
              bottom: 640.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 280),
                child: IconButton(icon: Icon(Icons.cancel,size: 55,),color: Colors.green,
                onPressed: (){
                  Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Account()));
                },
                ),
              )
              ),
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.fromLTRB(100, 240, 0, 0),
                     child: Text('Input the',
                     
                     style: TextStyle(
                       color: Colors.blue[900],
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       fontSize: 30
                     ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(100, 0, 0, 00),
                     child: Text('Amount you',
                     
                     style: TextStyle(
                       color: Colors.blue[900],
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       fontSize: 30
                     ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                     child: Text('would want to',
                     
                     style: TextStyle(
                       color: Colors.blue[900],
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       fontSize: 30
                     ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(100, 0, 0, 40),
                     child: Text('withdraw',
                     
                     style: TextStyle(
                       color: Colors.blue[900],
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       fontSize: 30
                     ),
                     ),
                   ),
                   
                 ],
               ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 450, 30, 0),
                  child: TextField(
                    
        decoration: InputDecoration(
          fillColor: Colors.blue,
          hintText: '3000',
          border: OutlineInputBorder(),
          labelText: 'Amount NGN',
          isDense: false,                      // Added this
          contentPadding: EdgeInsets.all(8),  // Added this
        ),
          ),
          
                ),
                Padding(
                         padding: const EdgeInsets.fromLTRB(70, 570, 70, 0),
                         child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.orangeAccent,
        child: MaterialButton(
          minWidth: 200,
          height: 60,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            
          },
          child: Text("Withdraw",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'Montserrat',fontSize: 20)),
        ),
      ),
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, 670, 10, 0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset('assets/mastercard.jpg',width: 70,height: 70,),
                             Image.asset('assets/visa.png', width: 100,height: 70,),
                             Image.asset('assets/verve1.png', width: 100,height: 70,),
                           ],
                         ),
                       )
                       ],),
        ),
      ),
    );
  }
}