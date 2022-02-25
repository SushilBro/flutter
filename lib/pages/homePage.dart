import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/NavigationDrawer/drawer.dart';
import 'package:samagyan_attendence/pages/class_.dart';
import 'package:samagyan_attendence/pages/firstHomePage.dart';
import 'package:samagyan_attendence/pages/secondHomePage.dart';
class HomePageSamagyan extends StatefulWidget {
  @override
  _HomePageSamagyanState createState() => _HomePageSamagyanState();
}

class _HomePageSamagyanState extends State<HomePageSamagyan> {
  var position='first_home_page';

  bool button_icon=true;
  Widget? _nextHomePage() {
    if (position == 'first_home_page') {
      setState(() {

      });
      return secondHomePage();
    }
    else if (position == 'second_home_page') {
      setState(() {

      });
      return FirstHomePage();
    }

  }

  // @override
  // void initState() {
  //   super.initState();
  //
  //   // getData();
  //   // print('it runs only once when the page is loaded');
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

      ),
      drawer: navigationDrawer(),
      body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Icon(
                      Icons.apps,
                      size: 35,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
              Container(
                child: _nextHomePage(),
              ),


            ],
          ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(position=='first_home_page' || button_icon){
            setState(() {
              position = 'second_home_page';
              button_icon = false;
            });
          }
          else if(position=='second_home_page'){
            setState(() {
              position ='first_home_page';
              button_icon = true;
            });
          }

        },
        backgroundColor: Colors.blue,
        child: Icon(button_icon? Icons.arrow_drop_down : Icons.arrow_drop_up_outlined),

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
