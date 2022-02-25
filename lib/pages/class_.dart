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
                                  Icons.people_outline,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Students',style: TextStyle(
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
                                  child: Icon(
                                    Icons.group,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                              ),
                              Text('Teachers',
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
                            Navigator.pushNamed(context, '/subjects');
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
                                      Icons.library_books,
                                      size: 50,
                                      color: Colors.white,
                                    )
                                ),
                                Text('Subjects',style: TextStyle(
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
                            Navigator.pushNamed(context, '/timeTable');
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
                                      Icons.grid_on_outlined,
                                      size: 50,
                                      color: Colors.white,
                                    )
                                ),
                                Text('Timetable',style: TextStyle(
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
                                  Icons.surround_sound_rounded,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              Text('Notice',style: TextStyle(
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
                                  'E',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Text('Exams',style: TextStyle(
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
    );

  }
}
