import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/NavigationDrawer/drawer.dart';
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
      drawer: navigationDrawer(),
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
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      icon='kanban_view';
                    });

                  },
                    child: Icon(
                      Icons.apps,
                      size: 30,
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
