import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/Fees/dueFees.dart';
import 'package:samagyan_attendence/pages/Fees/paidFees.dart';
import 'package:samagyan_attendence/pages/NavigationDrawer/drawer.dart';
import 'package:samagyan_attendence/pages/Notification/allTabContainer.dart';
class FeesMain extends StatefulWidget {
  @override
  _FeesMainState createState() => _FeesMainState();
}

class _FeesMainState extends State<FeesMain> {
  var position='dueFees';
  Widget? _nextPage() {
    if (position == 'dueFees') {
      setState(() {

      });
    return DueFees();
    }
    else if (position == 'MyClass') {
      setState(() {

      });
      return PaidFees();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fees',
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
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          position='dueFees';
                        });

                      },
                      child: Center(
                        child: Text('DUE FEES',style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),

                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          position='MyClass';
                        });

                      },
                      child: Center(
                        child: Text('PAID FEES',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),)
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('TOTAL FEES DUE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Text('43,356.00 Rs',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent
                      ),),
                    ],
                  ),

                  ],
              ),

            ),
            Container(
              child: _nextPage(),
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


