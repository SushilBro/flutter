import 'package:flutter/material.dart';
import 'package:samagyan_attendence/odoo_test/insert.dart';
import 'package:samagyan_attendence/pages/Class/Timetable/choosedDays.dart';
import 'package:samagyan_attendence/pages/Class/Timetable/timeTable.dart';
import 'package:samagyan_attendence/pages/Class/chossedSubject.dart';
import 'package:samagyan_attendence/pages/Class/subjects.dart';
import 'package:samagyan_attendence/pages/Events/allEvents.dart';
import 'package:samagyan_attendence/pages/Events/events.dart';
import 'package:samagyan_attendence/pages/Fees/feesMainPage.dart';
import 'package:samagyan_attendence/pages/Fees/viewFees.dart';
import 'package:samagyan_attendence/pages/Notification/mainNotificationPage.dart';
import 'package:samagyan_attendence/pages/Teachers/teachers_main_page.dart';
import 'package:samagyan_attendence/pages/class_.dart';
import 'package:samagyan_attendence/pages/home.dart';
import 'package:samagyan_attendence/pages/homePage.dart';
import 'package:samagyan_attendence/pages/liveSupport.dart';
import 'package:samagyan_attendence/pages/loading.dart';
import 'package:samagyan_attendence/pages/login.dart';
import 'package:samagyan_attendence/pages/message.dart';
import 'package:samagyan_attendence/pages/secureData.dart';
import 'package:samagyan_attendence/pages/easyAttendance.dart';
import 'package:samagyan_attendence/pages/signup.dart';
void main() => runApp(MaterialApp(
   initialRoute: '/loading',
  routes: {
     '/home' : (context) => Home(),
     '/easyAttendance' : (context) => easyAttendance(),
     '/liveSupport' : (context) => liveSupport(),
     '/secureData' : (context) => secureData(),
     '/loading' : (context) => Loading(),
     '/login' : (context) => Login(),
    '/homePageSamagyan' : (context) => HomePageSamagyan(),
    '/class' : (context) => Class(),
    '/messages': (context) => Messages(),
    '/teachers': (context) => Teachers(),
    '/notifications': (context) => NotificationMain(),
    '/fees': (context) => FeesMain(),
    '/viewFees': (context) => viewFees(),
    '/subjects': (context) => Subjects(),
    '/choosedSubjects' : (context) => choosedSubject(),
    '/timeTable' : (context) => timeTable(),
    '/choosedDays' : (context) => chooseDays(),
    '/events' : (context) => Events(),
    '/allEvents': (context) => allEvents(),
    '/signUp': (context) => SignUP(),
    '/insert':(context) => Insert(),

  },
));


