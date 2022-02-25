import 'package:flutter/material.dart';
class timeTable extends StatefulWidget {
  const timeTable({Key? key}) : super(key: key);

  @override
  _timeTableState createState() => _timeTableState();
}

class _timeTableState extends State<timeTable> {
  List list =['SUNDAY','MONDAY','TUESDAY','WEDNESDAY','THURSDAY','FRIDAY','SATURDAY'];
  List slist=['S','M','T','W','T','F','S'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context,index){
                      return Container(
                        height: 80,
                        child: Card(
                          elevation: 2,

                          child: ListTile(
                            onTap: (){
                              // print(list[index]);
                              Navigator.pushNamed(context, '/choosedDays');

                            },
                            title: Text(list[index],style: TextStyle(
                              fontSize: 20
                            ),),
                            leading: CircleAvatar(
                              child: Text(slist[index],style: TextStyle(
                                fontSize: 25
                              ),),
                            ),


                          ),
                        ),
                      );
                    }),
              ),
            ],
          )
      ),
    );
  }
}
