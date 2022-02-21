import 'package:flutter/material.dart';
class teachersList extends StatefulWidget {
  const teachersList({Key? key}) : super(key: key);

  @override
  _teachersListState createState() => _teachersListState();
}

class _teachersListState extends State<teachersList> {
  List<String> list=['Sushil Gautam','Sujan Bhandari', 'Preeti Adhikari','Shree Krishna Shrestha','Sushil Gautam','Sujan Bhandari', 'Preeti Adhikari','Shree Krishna Shrestha'];
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
                      print(list[index].characters);

                    },
                    title: Text(list[index]),
                    subtitle: Text('Hi ${list[index].characters}'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/cropped-dv.jpg'),
                    ),
                    trailing: PopupMenuButton(
                      itemBuilder: (context){
                        return [
                          PopupMenuItem(value: 'edit',child: Text('Edit')),
                          PopupMenuItem(value: 'edit',child: Text('Edit')),
                          PopupMenuItem(value: 'edit',child: Text('Edit')),
                        ];
                      },
                      onSelected: (String value){
                        // Call the method
                        actionPopUpItemSelected(value, list[index].characters.toString());
                      },
                    )

                  ),
                );
              }),
        )
    );
  }
}
