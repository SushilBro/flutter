import 'package:flutter/material.dart';
class Class extends StatefulWidget {
  @override
  _ClassState createState() => _ClassState();
}

class _ClassState extends State<Class> {
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
                        child: Card(
                          elevation:5,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Icon(
                                  Icons.departure_board_rounded,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Text('Transport')
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
                                  child: Text(
                                    'E',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                              ),
                              Text('Exam')
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
                                    Icons.add_to_photos_rounded,
                                    size: 50,
                                    color: Colors.blue,
                                  )
                              ),
                              Text('Homework')
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
                                    Icons.home,
                                    size: 50,
                                    color: Colors.blue,
                                  )
                              ),
                              Text('Library')
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
                                  Icons.grading_rounded,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Text('Reports')
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
                                  Icons.person_add,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Text('HR')
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
                                  Icons.settings,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Text('Settings')
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

                          },
                          child: Card(
                            elevation:5,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    'A',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Text('Results')
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
