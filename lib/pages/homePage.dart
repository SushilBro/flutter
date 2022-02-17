import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/home.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomePageSamagyan extends StatefulWidget {
  @override
  _HomePageSamagyanState createState() => _HomePageSamagyanState();
}

class _HomePageSamagyanState extends State<HomePageSamagyan> {
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Sushil Gautam',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),),
            ),
            ListTile(
              title: const Text('Samata Shikshya Niketan Secondary School, Pokhara-18',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
              onTap: (){

              },
            ),
            ListTile(

              title: const Text('Announcements'),
              onTap: (){

              },
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: 3),
              title: const Text('Events'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Fees'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('App Setting'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Rate Us in App Store'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Send Feedback and ideas'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: (){

              },
            )
          ],
        ),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.apps,
                      size: 50,
                    )
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
                                        Icons.photo_library_rounded,
                                        size: 50,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Text('Gallery')
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
                                          Icons.account_box_rounded,
                                          size: 50,
                                          color: Colors.blue,
                                        ),
                                    ),
                                    Text('Admin')
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
          ),

      ),
      floatingActionButton: FloatingActionButton(

        onPressed: (){

        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.arrow_drop_down
        ),

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
