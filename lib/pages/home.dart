import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 200.0, 30.0, 0.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      child: Center(
                        child: Text(
                          'S',
                          style: TextStyle(
                            fontSize: 80
                          ),
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 20,),
                Center(
                  child: Text('Welcome to Samagyan School ERP App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Text('Samagyan provides a neat and clean user inter-face and smooth & user friendly navigation with login access to various stakeholder of the system.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[800]
                    ),),
                ),
                SizedBox(height: 50,),
                Center(
                  child: FlatButton(
                    shape: StadiumBorder(
                      side: BorderSide(color: Colors.grey,width: 2)
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/easyAttendance');
                  },
                  child: Text('Next',
                  style: TextStyle(
                    color: Colors.blue,

                  ),),),
                ),


              ],
          ),
        ),
      ),
    );

  }
}

