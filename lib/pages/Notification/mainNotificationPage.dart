import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/NavigationDrawer/drawer.dart';
import 'package:samagyan_attendence/pages/Notification/allTabContainer.dart';
class NotificationMain extends StatefulWidget {
  @override
  _NotificationMainState createState() => _NotificationMainState();
}

class _NotificationMainState extends State<NotificationMain> {
  var position='all';
  Widget? _nextHomePage() {
    if (position == 'all') {
      setState(() {

      });
      return NotificationAllTab();
    }
    else if (position == 'MyClass') {
      setState(() {

      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,

      ),
      drawer: navigationDrawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Center(
                      child: Text('ALL',style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold
                      ),),
                    ),

                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                    child: Text('MY CLASS',style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),)
                ],
              ),
              
            ),
            Expanded(
              child: Container(
                child: _nextHomePage(),
              ),
            ),


          ],
        ),

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
