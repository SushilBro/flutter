import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/Fees/viewsFirstPage.dart';
import 'package:samagyan_attendence/pages/Fees/viewsSecondPage.dart';
class viewFees extends StatefulWidget {
  const viewFees({Key? key}) : super(key: key);

  @override
  _viewFeesState createState() => _viewFeesState();
}

class _viewFeesState extends State<viewFees> {
  var position=0;
  Widget? _nextPage() {
    if (position == 0) {
      setState(() {

      });
      return viewsFirstPage();
    }
    else if (position == 1) {
      setState(() {

      });
      return viewsSecondPage();
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: _nextPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if (position==0){
              position=1;
            }
            else{
              position=0;
            }
          });
        },
        child: Icon(
          Icons.arrow_drop_down
        ),
      ),
    );
  }
}
