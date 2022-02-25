import 'package:flutter/material.dart';
class DueFees extends StatefulWidget {
  const DueFees({Key? key}) : super(key: key);

  @override
  _DueFeesState createState() => _DueFeesState();
}

class _DueFeesState extends State<DueFees> {

  @override
  Widget build(BuildContext context) {
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
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            return Card(
              child: Column(
                children: [
                  ListTile(
                    onTap: (){

                    },
                    title: Text('Exam Fees - Magh Month'),
                    subtitle: Text('Due Date 20th Magh 2022'),
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
                          // actionPopUpItemSelected(value, list[index].characters.toString());
                        },
                      )

                  ),
                  ListTile(
                    // leading: Icon(Icons.check_circle,color: Colors.green,size: 32,)
                    subtitle: Text('12th Magh 2022, 12:15pm'),
                    trailing: Text(
                      'PAY NOW',style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

