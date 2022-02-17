import 'package:flutter/material.dart';

class secureData extends StatefulWidget {
  @override
  _secureDataState createState() => _secureDataState();
}

class _secureDataState extends State<secureData> {
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
                child: Container(
                  height: 100,
                  width: 100,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    // borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.security, color: Colors.blue,size: 100,),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text('Secure Data',
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
                    Navigator.pushNamed(context, '/liveSupport');
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

