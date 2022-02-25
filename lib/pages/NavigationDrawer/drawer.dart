import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class navigationDrawer extends StatefulWidget {
  const navigationDrawer({Key? key}) : super(key: key);

  @override
  _navigationDrawerState createState() => _navigationDrawerState();
}

class _navigationDrawerState extends State<navigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/cropped-dv.jpg'),
                radius: 30,
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sushil Gautam',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('Students of Samata Shiksya Niketan School',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),),
                  ],
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: const Text('Samata Shikshya Niketan Secondary School, Pokhara-18',
            style: TextStyle(
                fontSize: 16
            ),
          ),
          onTap: (){

          },
        ),
        ListTile(

          title: const Text('Announcements'),
          leading: Icon(
            Icons.volume_down,size: 30,color: Colors.red,
          ),
          onTap: (){

          },
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: 3),
          title: const Text('Events'),
          leading: Icon(
            Icons.alarm,size: 30,
          ),
          onTap: (){

          },
        ),
        ListTile(
          title: const Text('Fees'),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              '\$',style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),
            ),
            radius: 20,
          ),
          onTap: (){

          },
        ),
        ListTile(
          title: const Text('App Setting'),
          leading: Icon(
            Icons.settings,size: 30,
          ),
          onTap: (){

          },
        ),
        ListTile(
          title: const Text('Rate Us in App Store'),
          leading: Icon(
            Icons.star_half,size: 30,
          ),
          onTap: (){

          },
        ),
        ListTile(
          title: const Text('Send Feedback and ideas'),
          leading: Icon(
            Icons.lightbulb_outline_rounded,size: 30,
          ),
          onTap: (){

          },
        ),
        ListTile(
          title: const Text('Contact Us'),
          leading: Icon(
            Icons.message,size: 30,
          ),
          onTap: (){

          },
        ),
        // ListTile(
        //   leading: Center(
        //     child: FlatButton(
        //       onPressed: (){},
        //       child: Text('LOG OUT',style: TextStyle(
        //           fontSize: 22,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.grey
        //       ),),
        //     ),
        //   ),
        //
        // )
      ],
    ),
    );
  }
}
