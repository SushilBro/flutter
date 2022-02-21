import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/class_.dart';
class teachersKanban extends StatefulWidget {
  const teachersKanban({Key? key}) : super(key: key);

  @override
  _teachersKanbanState createState() => _teachersKanbanState();
}

class _teachersKanbanState extends State<teachersKanban> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
            itemBuilder: (context, index){
              return Class();
        }
        ),
      ),
    );
  }
}
