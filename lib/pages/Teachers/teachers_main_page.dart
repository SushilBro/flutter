import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/Teachers/teachers_kanban_view.dart';
import 'package:samagyan_attendence/pages/Teachers/teachers_list_view.dart';

class Teachers extends StatefulWidget {
  const Teachers({Key? key}) : super(key: key);

  @override
  _TeachersState createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
  var icon='';
  Widget? _nextContainer() {
    if (icon == 'list_view') {
      setState(() {

      });
      return teachersList();
    }
    else if (icon == 'kanban_view') {
      setState(() {

      });
      return teachersKanban();
    }
    return teachersList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Teachers',
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
      body: Column(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      icon='list_view';
                    });
                  },
                  child: Icon(
                    Icons.list,
                    size: 42,
                    color: Colors.blue,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      icon='kanban_view';
                    });

                  },
                    child: Icon(
                      Icons.apps,
                      size: 35,
                      color: Colors.blue,

                    ),
                  ),


              ],
            ),

          ),
          Container(
                child: _nextContainer(),
          ),


        ],
      ),
    );
  }
}
