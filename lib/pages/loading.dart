import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void newPage() async{
   await Future.delayed(Duration(seconds: 1));
   Navigator.of(context).pushNamed("/home");
  }
  @override
  void initState() {
    super.initState();
    newPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body:Center(
          child:SpinKitSpinningLines(
            color: Colors.white,
            size: 80.0,
          ),
        )
    );
  }
}
