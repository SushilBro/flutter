import 'package:flutter/material.dart';
class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 20),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('POUSH 29', style: TextStyle(
                fontSize: 20
              ),)
            ],),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 140.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 140.0,
                          child: Card(
                            color: Colors.redAccent,
                            elevation:5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Icon(
                                    Icons.alarm,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Text('ALL EVENTS',style: TextStyle(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    height: 140.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 140.0,
                          child: Card(
                            color: Colors.teal,
                            elevation:5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    'E',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Text('EXAMS',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),)
                              ],
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 140.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 140.0,
                          child: GestureDetector(
                            onTap: (){
                              // Navigator.pushNamed(context, '/subjects');
                            },
                            child: Card(
                              elevation:5,
                              color: Colors.deepPurpleAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                      child: Icon(
                                        Icons.flight,
                                        size: 50,
                                        color: Colors.white,
                                      )
                                  ),
                                  Text('HOLIDAYS',style: TextStyle(
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 140.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 140.0,
                          child: GestureDetector(
                            onTap: (){
                              // Navigator.pushNamed(context, '/timeTable');
                            },
                            child: Card(
                              elevation:5,
                              color: Colors.deepOrangeAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                      child: Icon(
                                        Icons.group,
                                        size: 50,
                                        color: Colors.white,
                                      )
                                  ),
                                  Text('MEETINGS',style: TextStyle(
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 140.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 140.0,
                          child: Card(
                            elevation:5,
                            color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Icon(
                                    Icons.directions_bike,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Text('Sports',style: TextStyle(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),
                ),


                Expanded(
                  flex: 2,
                  child: Container(
                    height: 140.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 140,
                          child: Card(
                            color: Colors.orangeAccent,
                            elevation:5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Text('FEES',style: TextStyle(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        backgroundColor: Colors.blue,


        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),
              label: 'Home'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_rounded,color: Colors.white,),
              label: 'Calander'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active,color: Colors.white,),
              label: 'Notifications')


        ],
      ),
    );
  }
}
