import 'package:flutter/material.dart';
class viewsFirstPage extends StatefulWidget {
  const viewsFirstPage({Key? key}) : super(key: key);

  @override
  _viewsFirstPageState createState() => _viewsFirstPageState();
}

class _viewsFirstPageState extends State<viewsFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Exam Fee - Magh month Fee',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),),
            Spacer(),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[350],
                  child: Icon(
                    Icons.close,
                  ),
                ),
                Text('Not Paid')
              ],
            )
          ],
        ),
        Container(
          color: Colors.redAccent,
          child: Row(
            children: [
              Text('Due Date 2011-2019',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
              ),),

            ],
          ),
        ),
        Container(
          child: Card(
            child: Row(
              children: [
                SizedBox(width: 20,),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/cropped-dv.jpg'),
                  radius: 30,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SUSHIL GAUTAM'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('Code - K12A1'),
                        ),

                        Text('Roll No - 23' )

                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 27),
                          child: Text("Class - 10 'A'",
                            style: TextStyle(

                            ),),
                        ),

                        Text('Optional - Math' )

                      ],

                    )
                  ],
                ),

              ],
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              // SizedBox(width: 10,),
              Text('Particulars',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
              ),),

            ],
          ),
        ),
        Container(
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 4,
                      child: Text('1. Student Activity Fee',
                        style: TextStyle(
                            color: Colors.grey
                        ),)
                  ),
                  Expanded(
                      flex: 1,
                      child: Text('3000'))
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 4,
                      child: Text('2. Health Center Fee',
                        style: TextStyle(
                            color: Colors.grey
                        ),)
                  ),
                  Expanded(
                      flex: 1,
                      child: Text('3000'))
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 4,
                      child: Text('3. Lab Fees',
                        style: TextStyle(
                            color: Colors.grey
                        ),)
                  ),
                  Expanded(
                      flex: 1,
                      child: Text('3000'))
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 4,
                      child: Text('4. Exam Fee',
                        style: TextStyle(
                            color: Colors.grey
                        ),)
                  ),
                  Expanded(
                      flex: 1,
                      child: Text('3000'))
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 4,
                      child: Text('Particulars Total',
                        style: TextStyle(
                            color: Colors.grey
                        ),)
                  ),
                  Expanded(
                      flex: 1,
                      child: Text('12000 Rs'))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
