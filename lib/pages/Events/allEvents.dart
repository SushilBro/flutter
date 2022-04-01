import 'package:flutter/material.dart';
class allEvents extends StatefulWidget {
  const allEvents({Key? key}) : super(key: key);

  @override
  _allEventsState createState() => _allEventsState();
}

class _allEventsState extends State<allEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Events'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                )
              ],),

          ),
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 30,left: 20,right: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(right: 0),
                    child: Card(
                      child: ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('01',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text('Magh',style: TextStyle(
                                fontSize: 18,
                                color:Colors.grey
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(left: 0),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Maghe Shakranti',
                            style: TextStyle(
                                fontSize: 20,
                              color: Colors.black54
                            ),),
                          Row(
                            children: [
                              Text('Magh',style: TextStyle(
                                  fontSize: 18,
                                  color:Colors.deepOrange
                              ),),
                              Text('  |  Holidays',style: TextStyle(
                                  fontSize: 18,
                                  color:Colors.deepOrange
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
        ]
      ),
    );
  }
}
