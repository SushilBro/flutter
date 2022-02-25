import 'package:flutter/material.dart';
class PaidFees extends StatefulWidget {
  const PaidFees({Key? key}) : super(key: key);

  @override
  _PaidFeesState createState() => _PaidFeesState();
}

class _PaidFeesState extends State<PaidFees> {

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
    return Container(
        child: Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
                return Card(
                  child: Column(
                    children: [
                      ListTile(
                          onTap: (){

                          },
                          title: Text('Exam Fees - Magh'),
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
                        leading: Icon(Icons.check_circle,color: Colors.green,size: 32,),
                        subtitle: Text('12th Magh 2022, 12:15pm'),
                        trailing: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context,'/viewFees');
                          },
                          child: Text(
                            'VIEW FEES',style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
    );
  }
}

