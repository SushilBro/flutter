import 'package:flutter/material.dart';
import 'package:samagyan_attendence/models/user.dart';
import 'package:samagyan_attendence/data/DatabaseHandler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

enum SignUPStatus { notSignIn, signIn }

class _SignUPState extends State<SignUP> {
  late DatabaseHandler handler;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final email= TextEditingController();
  final password= TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void saveTeachers() async {
    handler.initializeDB().whenComplete(() async{
      await addUsers();
      _showSnackBar('Teachers added succesfully');
    });
    // Database db = await DatabaseHelper..initDb();
    // var dbClient = await db;
    // await dbClient.transaction((txn) async{
    //   return await txn.rawInsert('INSERT INTO Students(email,password) VALUES (${students.email},${students.password})');
    // });
  }
  Future<int> addUsers() async {
    myUser firstUser = myUser(email.toString(),password.toString());
    List<myUser> listOfUsers = [firstUser];
    return await this.handler.insertUser(listOfUsers);
  }
  @override
  void initState() {
    super.initState();
    this.handler = DatabaseHandler();
    this.handler.initializeDB().whenComplete(() async {
      await this.addUsers();
      setState(() {});
    });
  }



  // _SignUPPageState() {
  //   _response = new SignUPResponse(this);
  // }



  void _showSnackBar(String text) {
    final snackBar = SnackBar(
      content: new Text(text),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  var value;
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");

      // _SignUPStatus = value == 1 ? SignUPStatus.signIn : SignUPStatus.notSignIn;
    });
  }

  signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", 0);
      preferences.commit();
      // _SignUPStatus = SignUPStatus.notSignIn;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("SignUP Page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Center(
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
              SizedBox(height: 20,),
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
              Padding(padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 15,bottom: 0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'Re Enter your password',
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please retype your password';
                  }
                },
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      saveTeachers();
                    }

                    },
                  child: Text(
                    'SignUP',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text('Already have an Account ? '),
              GestureDetector(
                child: Text('Sign In',style: TextStyle(
                  color: Colors.blue
                ),),
                onTap: (){
                  Navigator.pushReplacementNamed(context, '/login');
                },
              )

            ],
          ),
        ),
      ),
    );
  }

  savePref(int value,String user, String pass) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", value);
      preferences.setString("user", user);
      preferences.setString("pass", pass);
      preferences.commit();
    });
  }

  // @override
  // void onSignUPError(String error) {
  //   _showSnackBar(error);
  //   setState(() {
  //     // _isLoading = false;
  //   });
  // }

  // @override
  // void onSignUPSuccess(myUser user) async {
  //
  //   if(user != null){
  //     savePref(1,user.myUsername, user.password);
  //     // _SignUPStatus = SignUPStatus.signIn;
  //   }else{
  //     _showSnackBar("SignUP Gagal, Silahkan Periksa SignUP Anda");
  //     setState(() {
  //       // _isLoading = false;
  //     });
  //   }

  // }

}



