import 'package:flutter/material.dart';

class History extends StatefulWidget {
  History({Key key}) : super(key: key);

  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: Text('My Order History',
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
                        height: 140,
                        width: 400,
                        child: Card(
                         margin: EdgeInsets.all(12),
                          elevation: 7,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('25th Oct 2020   11:14pm',
                                    style:TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                    ),
                                    
                                    ),
                                    SizedBox(height: 4,),
                                    Text('Request for cash   N 3,500',
                                    style:TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                    
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
                                  child: Text('Completed',
                                  style:TextStyle(
                                    color: Colors.green[700]
                                  )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 1),
                      Container(
                        height: 140,
                        width: 400,
                        child: Card(
                         margin: EdgeInsets.all(12),
                          elevation: 7,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('25th Oct 2020   11:14pm',
                                    style:TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                    ),
                                    
                                    ),
                                    SizedBox(height: 4,),
                                    Text('Credit airtime   N300',
                                    style:TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                    
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
                                  child: Text('Failed',
                                  style:TextStyle(
                                    color: Colors.red
                                  )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 140,
                        width: 400,
                        child: Card(
                         margin: EdgeInsets.all(12),
                          elevation: 7,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('25th Oct 2020   11:23pm',
                                    style:TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                    ),
                                    
                                    ),
                                    SizedBox(height: 4,),
                                    Text('Credit data   500mb',
                                    style:TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Montserrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                    
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
                                  child: Text('Pending',
                                  style:TextStyle(
                                    color: Colors.blue[900]
                                  )
                                  ),
                                )
                              ],
                            ),
                          ),
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
          child: Text("Free Coin",
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