import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/class_.dart';
class NotificationAllTab extends StatefulWidget {

  @override
  _NotificationAllTabState createState() => _NotificationAllTabState();
}

class _NotificationAllTabState extends State<NotificationAllTab> {
  List<String> list=['Sushil Gautam','Sujan Bhandari', 'Preeti Adhikari','Shree Krishna Shrestha','Sushil Gautam','Sujan Bhandari', 'Preeti Adhikari','Shree Krishna Shrestha'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          color: Colors.grey[250],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('New',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700]
              ),)
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
                        title: Text('Sushil Gautam Added a new Photo on his time line',style: TextStyle(
                          color: Colors.grey[800]
                        ),),
                        subtitle: Text('4hrs'),
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage('assets/cropped-dv.jpg'),
                        ),
                        trailing: Text(
                          '10:30',
                          style: TextStyle(
                              color: Colors.blue
                          ),
                        ),

                      ),
                    );
                  }),
            )
        ),
        Container(
          height: 40,
          color: Colors.grey[250],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Earlier',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]
              ),)
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
                        title: Text('Sushil Gautam Added a new Photo on his time line',
                        style: TextStyle(
                          color: Colors.grey[800]
                        ),),
                        subtitle: Text('4hrs'),
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage('assets/cropped-dv.jpg'),
                        ),
                        trailing: Text(
                          '10:30',
                          style: TextStyle(
                              color: Colors.blue
                          ),
                        ),

                      ),
                    );
                  }),
            )
        ),
      ],
    );
  }
}
