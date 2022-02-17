import 'package:flutter/material.dart';
import 'package:samagyan_attendence/pages/home.dart';
import 'package:samagyan_attendence/pages/homePage.dart';
import 'package:samagyan_attendence/pages/liveSupport.dart';
import 'package:samagyan_attendence/pages/loading.dart';
import 'package:samagyan_attendence/pages/login.dart';
import 'package:samagyan_attendence/pages/secureData.dart';
import 'package:samagyan_attendence/pages/easyAttendance.dart';
void main() => runApp(MaterialApp(
   initialRoute: '/loading',
  routes: {
     '/home' : (context) => Home(),
     '/easyAttendance' : (context) => easyAttendance(),
     '/liveSupport' : (context) => liveSupport(),
     '/secureData' : (context) => secureData(),
     '/loading' : (context) => Loading(),
     '/login' : (context) => Login(),
    '/homePageSamagyan' : (context) => HomePageSamagyan()

  },
));


