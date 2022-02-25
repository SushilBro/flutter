import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/Class/subjectsKanban.dart';
import 'package:samagyan_attendence/pages/Class/subjectsList.dart';
import 'package:samagyan_attendence/pages/NavigationDrawer/drawer.dart';

class Subjects extends StatefulWidget {
  const Subjects({Key? key}) : super(key: key);

  @override
  _SubjectsState createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  var icon='list_view';
  Widget? _nextContainer() {
    if (icon == 'list_view') {
      setState(() {

      });
      return subjectList();

    }
    else if (icon == 'kanban_view') {
      setState(() {

      });
      return subjectKanban();

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Subjects',
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
                Text('Class:'),
                DropdownButton<String>(
                  items: <String>['1', '8', '9', '10'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                SizedBox(width: 225,),
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
                    size: 28,
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
