import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/NavigationDrawer/drawer.dart';
import 'package:samagyan_attendence/pages/class_.dart';
import 'package:samagyan_attendence/pages/firstHomePage.dart';
import 'package:samagyan_attendence/pages/secondHomePage.dart';
class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<String> list=['Sushil Gautam','Sujan Bhandari', 'Preeti Adhikari','Shree Krishna Shrestha','Sushil Gautam','Sujan Bhandari', 'Preeti Adhikari','Shree Krishna Shrestha'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Message',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

      ),
      drawer: navigationDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                    child: Container(
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.alarm,
                            color: Colors.blue,
                            size: 40,
                          ),
                          Text('Recents',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize:15
                          ),
                          ),
                          Divider(thickness: 3,color: Colors.blue,)
                        ],
                      ),
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.group,
                            color: Colors.blue,
                            size: 40,
                          ),
                          Text('Active',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize:15
                            ),)
                        ],
                      ),
                    )),
                Expanded(
                  flex: 2,
                    child: Container(
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.messenger,
                            color: Colors.blue,
                            size: 40,
                          ),
                          Text('Group Message',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize:15
                            ),
                          ),

                        ],
                      ),
                    ))
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
                        subtitle: Text('Hi ${list[index].characters}'),
                        leading: CircleAvatar(
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
      ),
     
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        backgroundColor: Colors.blue,


        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),
              label: 'Home'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_rounded,color: Colors.white,),
              label: 'Calander'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active,color: Colors.white,),
              label: 'Notifications')


        ],
      ),

    );
  }
}
