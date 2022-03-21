import 'package:flutter/material.dart';


class Invite extends StatefulWidget {
  Invite({Key key}) : super(key: key);

  _InviteState createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: Text('Invite friends',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
            )),
      ),
      body: Container(
        color: Colors.grey[400],
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
                        height: 140,
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
                                color: Colors.black26,
                                endIndent: 10.0,
                                indent: 12.0,
                                thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('Invite a friend',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text('You get 100,000 coins for each',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text('friend that you invite',
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
                        height: 140,
                        width: double.maxFinite,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child:  Image.asset(
                                'assets/scuff.png',
                                height: 70,
                              ),
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
                                    child: Text('Your Referral Code',
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
                                        'Your referral Code is: YSFDGS',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                        'share with invited friends',
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
                        //  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                        height: 230,
                        width: double.maxFinite,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 70),
                                    child: Text('Did a friend invite you?',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.blue[900],
                                            fontSize: 20,
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
                       Padding(
                         padding: const EdgeInsets.all(30.0),
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
          child: Text("Submit",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'Montserrat',fontSize: 20)),
        ),
      ),
                       ),
                    ]),
                )
              );
            }
          ),
        )
      )
    );
  }
}