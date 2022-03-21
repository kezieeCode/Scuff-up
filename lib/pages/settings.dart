import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
   bool _value = false; 
    bool _time = false; 
     bool _now = false;
     bool _app = false;  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: Text('Settings',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
            )),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Scrollbar(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, builder) {
              var column = Column(
                                       children: [
                                         Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 10, 265, 0),
                                          child: Text('Security',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 17,
                                            fontFamily: 'Montserrat'
                                          ),
                                          ),
                                    ),
                                       ],
                                     );
                            return Container(
                              child: Padding(
                                padding: EdgeInsets.all(1),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 10, 200, 0),
                                      child: Text('Sound Settings',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 17,
                                        fontFamily: 'Montserrat'
                                      ),
                                      ),
                                    ),
                                    Container(
                                      height: 240,
                                      width: 400,
                                      child: Card(
                                       margin: EdgeInsets.all(12),
                                        elevation: 0,
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child:
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  ListTileSwitch(  
                    value: _time,    
                  onChanged: (value) {  
                    setState(() {  
                    _time = value;  
                    });
                  },
                  visualDensity: VisualDensity.comfortable,
                  switchType: SwitchType.cupertino,
                  switchActiveColor: Colors.orangeAccent,  
                  title: Text('Sound',
                  style: TextStyle(color: Colors.blue,
                  fontFamily: 'Montserrat',
                  fontSize: 20),
                  ),  
                 ),
                                                  SizedBox(height: 10,),
                                                
                                                  ListTileSwitch(  
                    value: _now,    
                  onChanged: (value) {  
                    setState(() {  
                    _now = value;  
                    });
                  },
                  visualDensity: VisualDensity.comfortable,
                  switchType: SwitchType.cupertino,
                  switchActiveColor: Colors.orangeAccent,  
                  title: Text('Vibration',
                   style: TextStyle(color: Colors.blue,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  )),  
                 ),
                                                  SizedBox(height: 10,),
                                                   ListTileSwitch(  
                    value: _value,    
                  onChanged: (value) {  
                    setState(() {  
                    _value = value;  
                    });
                  },
                  visualDensity: VisualDensity.comfortable,
                  switchType: SwitchType.cupertino,
                  switchActiveColor: Colors.orangeAccent,  
                  title: Text('Background Music',
                  style: TextStyle(color: Colors.blue,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  )
                  ),  
                 ),
                                                ],
                                              ),
                                              
                                        
                                        
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                     Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 10, 240, 0),
                                      child: Text('Notification',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 17,
                                        fontFamily: 'Montserrat'
                                      ),
                                      ),
                                    ),
                                    Container(
                                      height: 120,
                                      width: 400,
                                      child: Card(
                                       margin: EdgeInsets.all(10),
                                        elevation: 0,
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child:
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Column(
                                                    children: [
                                                      ListTileSwitch(  
                    value: _app,    
                  onChanged: (value) {  
                    setState(() {  
                    _app = value;  
                    });
                  },
                  visualDensity: VisualDensity.comfortable,
                  switchType: SwitchType.cupertino,
                  switchActiveColor: Colors.orangeAccent,  
                  title: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(
                      children: [
                        Text('App Notification',
                   style: TextStyle(color: Colors.blue,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  )),
                  Text('Send Notifications when',style: TextStyle(color: Colors.blue,
                  fontFamily: 'Montserrat',
               
                  )),
                  Text('contents are available',
                  style: TextStyle(color: Colors.blue,
                  fontFamily: 'Montserrat',
               
                  )
                  )
                      ],
                    ),
                  ),  
                 ),
                                                      
                                                        
                                                    ],
                                                  ),
                                                  
                                                ],
                                              ),
                                              
                                        
                                        
                                        ),
                                        
                                      ),
                                    ),
                                   
                                     column,
                      Container(
                        height: 115,
                        width: 400,
                        child: Card(
                         margin: EdgeInsets.all(12),
                          elevation: 0,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                                              child: Text('Logout',
                                              style:TextStyle(
                                                color: Colors.blue,
                                                fontFamily: 'Montserrat',
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ),
                                             
                                      
                                      ],
                                    ),
                                     IconButton(
                                       icon: Icon(Icons.arrow_forward_ios,color: Colors.orangeAccent,),
                                       onPressed: (){},
                                     )
                                    
                                  ],
                                ),
                                
                          
                          
                                  ]),
                          
                        ),
                      ),
                        
                      
                       
                  )]),
                )
              );
            }
          ),
        )
      )
    );
  }
}
