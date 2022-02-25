import 'package:flutter/material.dart';
class subjectList extends StatefulWidget {
  const subjectList({Key? key}) : super(key: key);

  @override
  _subjectListState createState() => _subjectListState();
}

class _subjectListState extends State<subjectList> {
  List<String> list=['Mathematics','Science','English','Nepali','Social','Health Science','Programming','Computer','Account'];
  void actionPopUpItemSelected(String value, String name) {
    String message;
    if (value == 'edit') {
      message = 'You selected edit for $name';
      // You can navigate the user to edit page.
    } else if (value == 'delete') {
      message = 'You selected delete for $name';
      // You can delete the item.
    } else {
      message = 'Not implemented';
    }
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                      onTap: (){
                       //print(list[index].characters);
                        Navigator.pushNamed(context, '/choosedSubjects');
                      },
                      title: Text(list[index]),
                      trailing: Text(
                        'ADMT02',style: TextStyle(
                        color: Colors.black38,
                        fontSize: 20
                      ),
                      )

                  ),
                );
              }),
        )
    );
  }
}
