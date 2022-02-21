import 'package:flutter/material.dart';
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Sushil Gautam',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),),
            ),
            ListTile(
              title: const Text('Samata Shikshya Niketan Secondary School, Pokhara-18',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              onTap: (){

              },
            ),
            ListTile(

              title: const Text('Announcements'),
              onTap: (){

              },
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: 3),
              title: const Text('Events'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Fees'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('App Setting'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Rate Us in App Store'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Send Feedback and ideas'),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: (){

              },
            )
          ],
        ),
      ),
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
