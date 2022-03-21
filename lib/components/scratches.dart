import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:scuffup/pages/dashboard.dart';


class Scratch extends StatefulWidget {
  @override
  _ScratchState createState() => _ScratchState();
}

class _ScratchState extends State<Scratch> {
  final scratchKey = GlobalKey<ScratcherState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
          Container(
            
             decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage("assets/scuff.png"),
                        alignment: Alignment(0.0, -1.2),
                        // colorFilter: ColorFilter.mode(Colors.red, BlendMode.hue)
                    ),
          ),
            
           child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Scratcher(
                  key: scratchKey,
                  image: Image.asset('assets/cash.png'),
                  brushSize: 100,
                  threshold: 80,
                  color: Colors.grey,
                  onChange: (value) => Text('Scratch in progress'),
                  onThreshold: () => Text('Good'),
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Image.asset('assets/scuff.png'),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  child: ButtonTheme(
                    minWidth: 300,
                    height: 100,
                    child: RaisedButton(
                      color: Colors.orangeAccent,
                      child: Text(
                        'CLAIM COINS',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 7,
                      splashColor: Colors.green,
                      onPressed: () {
                        AwesomeDialog(
                            context: context,
                            animType: AnimType.LEFTSLIDE,
                            headerAnimationLoop: false,
                            dialogType: DialogType.SUCCES,
                            title: 'Wow you won some Coin',
                            desc:
                                'You won some coin check your dashboard to see them',
                            btnOkOnPress: () {
                              debugPrint('OnClcik');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            btnOkIcon: Icons.check_circle,
                            onDissmissCallback: () {
                              debugPrint('Dialog Dissmiss from callback');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            })
                          ..show();
                      },
                    ),
                  ))
            ])),
          ),
          Positioned(
            top: 40.0,
            right: 0.0,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                color:  Colors.white,
                icon: Icon(Icons.cancel, size:40,),
                onPressed: (){
                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                },
              ),
            ),
          ),
          

        ],)
        // 
      
    );
  }
}
