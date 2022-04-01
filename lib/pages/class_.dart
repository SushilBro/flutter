import 'package:flutter/material.dart';

import 'NavigationDrawer/drawer.dart';
class Class extends StatefulWidget {
  @override
  _ClassState createState() => _ClassState();
}

class _ClassState extends State<Class> {
  String clas = 'Class: 1';
  String sec='Sec: A';
  var class_items = ['Class: 1', 'Class: 2', 'Class: 3', 'Class: 4', 'Class: 5'];
  var sec_items = ['Sec: A', 'Sec: B', 'Sec: C', 'Sec: D', 'Sec: E'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

      ),
      drawer: navigationDrawer(),
      body: Column(

        children: <Widget>[
          Container(
            height: 50,
            color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Expanded(
                  flex:1,
                  child: DropdownButton(

                    // Initial Value
                    value: clas,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: class_items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items,style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        clas = newValue!;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex:1,
                  child: DropdownButton(

                    // Initial Value
                    value: sec,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: sec_items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items,style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        sec = newValue!;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: SizedBox())

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
