import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class choosedSubject extends StatefulWidget {
  const choosedSubject({Key? key}) : super(key: key);

  @override
  _choosedSubjectState createState() => _choosedSubjectState();
}

class _choosedSubjectState extends State<choosedSubject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematics'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  color: Colors.green,
                  height: 150,
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            '90%',style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                          Text(
                            'Course Completed',style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                          )
                        ],
                      )

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 25,),
                      Card(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex:1,child: Column(
                                    children: [
                                      Text('ADM202',
                                      style: TextStyle(
                                        fontSize:20
                                      ),),
                                    Text('Code',
                                      style: TextStyle(
                                          fontSize:18,
                                        color: Colors.black45
                                      ),)
                                    ],
                                )),
                                Expanded(flex:1,child: Column(
                                  children: [
                                    Text('SUSHIL GAUTAM',
                                      style: TextStyle(
                                          fontSize:20
                                      ),),
                                    Text('Code',
                                      style: TextStyle(
                                          fontSize:18,
                                          color: Colors.black45
                                      ),)
                                  ],
                                ))
                              ],
                            ),
                            Row(

                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex:1,child: Column(
                                  children: [
                                    Text('12',
                                      style: TextStyle(
                                          fontSize:20
                                      ),),
                                    Text('Code',
                                      style: TextStyle(
                                          fontSize:18,
                                          color: Colors.black45
                                      ),)
                                  ],
                                )),
                                Expanded(flex:1,child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Text('TRIGONOMETRY',
                                      style: TextStyle(
                                          fontSize:20
                                      ),),
                                    Text('Code',
                                      style: TextStyle(
                                          fontSize:18,
                                          color: Colors.black45
                                      ),)
                                  ],
                                ))
                              ],
                            ),
                            Row(

                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex:1,child: Column(
                                  children: [
                                    Text('23',
                                      style: TextStyle(
                                          fontSize:20
                                      ),),
                                    Text('Code',
                                      style: TextStyle(
                                          fontSize:18,
                                          color: Colors.black45
                                      ),)
                                  ],
                                )),
                                Expanded(flex:1,child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('FIRST',
                                      style: TextStyle(
                                          fontSize:20
                                      ),
                                    ),
                                    Text('Code',
                                      style: TextStyle(
                                          fontSize:18,
                                          color: Colors.black45
                                      ),)
                                  ],
                                ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex:1,
                                    child: Column(
                                  children: [
                                    Text('10:00-10:45',
                                      style: TextStyle(
                                          fontSize:20
                                      ),),
                                    Text('Code',
                                      style: TextStyle(
                                          fontSize:18,
                                          color: Colors.black45
                                      ),)
                                  ],
                                )),
                                Expanded(flex:1,child: Column(
                                  children: [
                                    Text('45 Mins',
                                      style: TextStyle(
                                          fontSize:20
                                      ),),
                                    Text('Code',
                                      style: TextStyle(
                                          fontSize:18,
                                          color: Colors.black45
                                      ),)

                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Any queries about courses and teachers ?',
                        style: TextStyle(
                            fontSize:18,
                            color: Colors.black45
                        ),),
                      SizedBox(height: 20,),
                      Text('Click Here',
                        style: TextStyle(
                            fontSize:20,
                            color: Colors.redAccent,
                          fontWeight: FontWeight.bold
                        ),),

                    ],
                  ),
                )
              ],
            ),

          ),

        ],
      ),
    );
  }
}
