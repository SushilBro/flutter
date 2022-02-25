import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/class_.dart';
class subjectKanban extends StatefulWidget {
  const subjectKanban({Key? key}) : super(key: key);

  @override
  _subjectKanbanState createState() => _subjectKanbanState();
}

class _subjectKanbanState extends State<subjectKanban> {
  List<String> list=['Mathematics','Science','English','Nepali','Social','Health Science','Programming','Computer','Account'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          itemCount: list.length,
            itemBuilder: (context, index){
              return Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 140.0,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 140.0,
                                  child: Card(
                                    color: Colors.grey,
                                    elevation:5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.people_outline,
                                            size: 50,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(list[index],style: TextStyle(
                                            color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),

                              ],

                            ),
                          ),
                        ),

                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 140.0,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 140.0,
                                  child: Card(
                                    color: Colors.grey,
                                    elevation:5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.group,
                                            size: 50,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(list[index],
                                          style: TextStyle(
                                              color: Colors.white
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),

                              ],

                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 140.0,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 140.0,
                                  child: Card(
                                    color: Colors.grey,
                                    elevation:5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Icon(
                                            Icons.group,
                                            size: 50,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(list[index],
                                          style: TextStyle(
                                              color: Colors.white
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),

                              ],

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              );
            }
        ),
      ),
    );
  }
}
