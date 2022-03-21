import 'package:flutter/material.dart';
import 'package:scuffup/pages/dashboard.dart';
import 'package:scuffup/AlertDialog/custom_dialog_box.dart';
import 'package:scuffup/components/scratches.dart';
class Instruct extends StatelessWidget {
  const Instruct({Key key}) : super(key: key);

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
                                              builder: (context) => Home(
                                               
                                              )));
                },
                ),
              )
              ),
               Column(
                 children: [
                   Padding(
                         padding: const EdgeInsets.fromLTRB(70, 200, 70, 0),
                         child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.orangeAccent,
        child: MaterialButton(
          minWidth: 200,
          height: 60,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            
          },
          child: Text("N 1000",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'Montserrat',fontSize: 20)),
        ),
      ),
                       ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                     child: Divider(color: Colors.blue,),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                     child: Text('In order to play',
                     
                     style: TextStyle(
                       color: Colors.blue[900],
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       fontSize: 30
                     ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(10, 0, 40, 0),
                     child: Text('and get rewards',
                     
                     style: TextStyle(
                       color: Colors.blue[900],
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       fontSize: 30
                     ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                     child: Text('you have to activate',
                     
                     style: TextStyle(
                       color: Colors.blue[900],
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       fontSize: 30
                     ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                     child: Text('your account',
                     
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
                         padding: const EdgeInsets.fromLTRB(70, 470, 70, 0),
                         child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.orangeAccent,
        child: MaterialButton(
          minWidth: 200,
          height: 60,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Scratch(
                                               
                                              )));
          },
          child: Text("Activate",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'Montserrat',fontSize: 20)),
        ),
      ),
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, 570, 10, 0),
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