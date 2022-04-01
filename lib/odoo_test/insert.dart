import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

class Insert extends StatefulWidget {
  @override
  _InsertState createState() => _InsertState();
}

enum InsertStatus { notSignIn, signIn }

class _InsertState extends State<Insert> {

  InsertStatus _InsertStatus = InsertStatus.notSignIn;
  late BuildContext _ctx;
  bool _isLoading = false;
  final formKey_ = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  // final orpc = OdooClient('http://54.169.240.224:10015/');

  final email= TextEditingController();
  final password= TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState?.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }
  // void main() async {
  //   await orpc.authenticate('admin', 'admin', 'admin');
  //   print('conected');
  // }
  void main() async {
    // Restore session ID from storage and pass it to client constructor.
    final baseUrl = 'http://54.169.240.224:10015/';
    final client = OdooClient(baseUrl);
    // Subscribe to session changes to store most recent one
    var subscription = client.sessionStream.listen(sessionChanged);
    var loginSubscription = client.loginStream.listen(loginStateChanged);
    var inRequestSubscription = client.inRequestStream.listen(inRequestChanged);

    try {
      // Authenticate to server with db name and credentials
      final session = await client.authenticate('admin', 'admin', 'admin');
      print(session);
      print('Authenticated');

      // Compute image avatar field name depending on server version
      final image_field =
      session.serverVersion >= 13 ? 'image_128' : 'image_small';

      // Read our user's fields
      final uid = session.userId;
      var res = await client.callKw({
        'model': 'res.users',
        'method': 'search_read',
        'args': [],
        'kwargs': {
          'context': {'bin_size': true},
          'domain': [
            ['id', '=', uid]
          ],
          'fields': ['id', 'name', '__last_update', image_field],
        },
      });
      print('\nUser info: \n' + res.toString());
      // compute avatar url if we got reply
      if (res.length == 1) {
        var unique = res[0]['__last_update'] as String;
        unique = unique.replaceAll(RegExp(r'[^0-9]'), '');
        final user_avatar =
            '$baseUrl/web/image?model=res.user&field=$image_field&id=$uid&unique=$unique';
        print('User Avatar URL: $user_avatar');
      }

      // Create partner
      // var partner_id = await client.callKw({
      //   'model': 'signup.insert',
      //   'method': 'create',
      //   'args': [
      //     {
      //        'email':email.text,
      //        'password':password.text,
      //     },
      //   ],
      //   'kwargs': {},
      // });
      // // Update partner by id
      // res = await client.callKw({
      //   'model': 'signup.insert',
      //   'method': 'write',
      //   'args': [
      //     partner_id,
      //     {
      //       'is_company': true,
      //     },
      //   ],
      //   'kwargs': {},
      // });

      // Get list of installed modules
      res = await client.callRPC('/web/session/modules', 'call', {});
      print('\nInstalled modules: \n' + res.toString());

      // Check if loggeed in
      print('\nChecking session while logged in');
      res = await client.checkSession();
      print('ok');

      // Log out
      print('\nDestroying session');
      await client.destroySession();
      print('ok');
    } on OdooException catch (e) {
      // Cleanup on odoo exception
      print(e);
      await subscription.cancel();
      await loginSubscription.cancel();
      await inRequestSubscription.cancel();
      client.close();
      exit(-1);
    }

    print('\nChecking session while logged out');
    try {
      var res = await client.checkSession();
      print(res);
    } on OdooSessionExpiredException {
      print('Odoo Exception:Session expired');
    }
    await client.inRequestStream.isEmpty;
    await subscription.cancel();
    await loginSubscription.cancel();
    await inRequestSubscription.cancel();
    client.close();
  }

  var value;
  void sessionChanged(OdooSession sessionId) async {
    print('We got new session ID: ' + sessionId.id);
    // write to persistent storage
  }

  void loginStateChanged(OdooLoginEvent event) async {
    if (event == OdooLoginEvent.loggedIn) {
      print('Logged in');
    }
    if (event == OdooLoginEvent.loggedOut) {
      print('Logged out');
    }
  }

  void inRequestChanged(bool event) async {
    if (event) print('Request is executing'); // draw progress indicator
    if (!event) print('Request is finished'); // hide progress indicator
  }
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Insert Page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey_,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0,bottom: 20),
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    child: Center(
                      child: Text(
                        'S',
                        style: TextStyle(
                            fontSize: 80
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                  controller: email,
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Email cannot be empty';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                  controller: password,
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Password cannot be empty';
                    }
                  },
                ),
              ),
              FlatButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    if(formKey_.currentState!.validate()){
                      try{
                        main();
                      }
                      catch(e){
                        print(e);
                      }

                    }
                  },
                  child: Text(
                    'Insert',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              GestureDetector(
                child: Text('New User? Create Account'),
                onTap: (){
                  Navigator.pushNamed(context, '/signUp');
                },
              )
            ],
          ),
        ),
      ),
    );
  }

}



