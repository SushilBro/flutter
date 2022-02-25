import 'package:flutter/material.dart';
class chooseDays extends StatefulWidget {
  const chooseDays({Key? key}) : super(key: key);

  @override
  _chooseDaysState createState() => _chooseDaysState();
}

class _chooseDaysState extends State<chooseDays> {
  String clas = 'Class: 1';
  String sec='Sec: A';
  String day='SUNDAY';

  // List of items in our dropdown menu
  List<int> numbers=[1,2,3,4,5,6,7];
  var class_items = ['Class: 1', 'Class: 2', 'Class: 3', 'Class: 4', 'Class: 5'];
  var sec_items = ['Sec: A', 'Sec: B', 'Sec: C', 'Sec: D', 'Sec: E'];
  var day_items = ['SUNDAY','MONDAY','TUESDAY','WEDNESDAY','THURSDAY','FRIDAY','SATURDAY'];
  List<String> list=['Mathematics','Science','English','Nepali','Social','Health Science','Computer'];
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
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(
              Icons.search
          )),
        ],
      ),
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
                        child: Text(items),
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
                        child: Text(items),
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
                  flex:1,
                  child: DropdownButton(

                    // Initial Value
                    value: day,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: day_items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        day = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),

          ),
      Container(

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
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.person
                                ),
                                Text('Sushil Gautam',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.deepOrange
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                    Icons.alarm
                                ),
                                Text('10:00 AM-10:45 AM( 45 min)')
                              ],
                            ),
                          ],
                        ),
                        leading: CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Text(numbers[index].toString(),style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold),),
                          ),
                        ),
                        trailing: PopupMenuButton(
                          itemBuilder: (context){
                            return [
                              PopupMenuItem(value: 'edit',child: Text('Edit')),
                              PopupMenuItem(value: 'delete',child: Text('Delete')),
                              PopupMenuItem(value: 'save',child: Text('Save')),
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
      )


        ],
      ),
    );
  }
}
