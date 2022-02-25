import 'package:flutter/material.dart';
class viewsSecondPage extends StatefulWidget {
  const viewsSecondPage({Key? key}) : super(key: key);

  @override
  _viewsSecondPageState createState() => _viewsSecondPageState();
}

class _viewsSecondPageState extends State<viewsSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Discount',style: TextStyle(
              fontSize: 25
            ),
            )
          ],
        ),
        Card(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    flex: 4,
                    child: Text('1. Labour Children',
                      style: TextStyle(
                          color: Colors.grey
                      ),)
                ),
                Expanded(
                    flex: 1,
                    child: Text('1000'))
              ],
            ),
          ),
        ),
        Container(
          color: Colors.green,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text('Total 8,000 Rs',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
              ),),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                  primary: Colors.white,
                ),
                onPressed: () { },
                child: Text('Pay Now'),
              ),
            ),
          ],
        ),
        Row(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Text('Note:',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black54
                ),),
                SizedBox(height: 15,),
                Text('Stuent should pay fees on time otherwise 10% fees will add.',
                style: TextStyle(
                  color: Colors.black45
                ),)
              ],
            )
          ],
        )

      ],
    );
  }
}
