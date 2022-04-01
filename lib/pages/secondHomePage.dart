import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/class_.dart';
import 'package:samagyan_attendence/pages/homePage.dart';
import 'package:samagyan_attendence/pages/test.dart';
class secondHomePage extends StatefulWidget {

  @override
  _secondHomePageState createState() => _secondHomePageState();
}

class _secondHomePageState extends State<secondHomePage> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/notifications');
                          },
                          child: Card(
                            elevation:5,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Icon(
                                    Icons.notifications_active,
                                    size: 50,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text('Notification')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/teachers');
                          },
                          child: Card(
                            elevation:5,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Icon(
                                    Icons.people_alt,
                                    size: 50,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text('Teachers')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: Card(
                          elevation:5,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Icon(
                                  Icons.window,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Text('Table')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: Card(
                          elevation:5,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Icon(
                                  Icons.people_outline,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Text('Students')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/events');
                          },
                          child: Card(
                            elevation:5,
                            child: Column(
                              children: <Widget>[
                                Center(
                                    child: Icon(
                                      Icons.alarm,
                                      size: 50,
                                      color: Colors.blue,
                                    )
                                ),
                                Text('Events')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: Card(
                          elevation:5,
                          child: Column(
                            children: <Widget>[
                              Center(
                                  child: Icon(
                                    Icons.calendar_today_rounded,
                                    size: 50,
                                    color: Colors.blue,
                                  )
                              ),
                              Text('Calendar')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/fees');
                          },
                          child: Card(
                            elevation:5,
                            child: Column(
                              children: <Widget>[
                                Center(
                                    child: Text(
                                      '\$',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ),
                                Text('Fees')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: Card(
                          elevation:5,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Icon(
                                  Icons.grading_rounded,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Text('Attendances')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: Card(
                          elevation:5,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Icon(
                                  Icons.surround_sound,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Text('Notice')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (_) => HomePageSamagyan(position: 'class'),),);
                            Navigator.pushNamed(context, '/class');
                          },
                          child: Card(
                            elevation:5,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Icon(
                                    Icons.widgets_rounded,
                                    size: 50,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text('My Class')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: Card(
                          elevation:5,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Icon(
                                  Icons.featured_play_list_sharp,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Text('Courses')
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
                  height: 120.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                        child: GestureDetector(
                          onTap: (){
                              Navigator.pushNamed(context, '/messages');
                          },
                          child: Card(
                            elevation:5,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Icon(
                                    Icons.messenger,
                                    size: 50,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text('Messages')
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
      ],
    );
  }
}
