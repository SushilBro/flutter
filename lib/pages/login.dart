import 'package:flutter/material.dart';
import 'package:samagyan_attendence/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/login_response.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

enum LoginStatus { notSignIn, signIn }

class _LoginState extends State<Login> {
  LoginStatus _loginStatus = LoginStatus.notSignIn;
  late BuildContext _ctx;
  bool _isLoading = false;
  final formKey_ = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  late String _username, _password;
  late LoginResponse _response;

  // _LoginPageState() {
  //   _response = new LoginResponse(this);
  // }

  // void _submit() {
  //   final form = formKey.currentState;
  //     setState(() {
  //       _isLoading = true;
  //       form?.save();
  //       _response.doLogin(_username, _password);
  //     });
  // }


  void _showSnackBar(String text) {
    scaffoldKey.currentState?.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  var value;
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");

      _loginStatus = value == 1 ? LoginStatus.signIn : LoginStatus.notSignIn;
    });
  }

  signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", 0);
      preferences.commit();
      _loginStatus = LoginStatus.notSignIn;
    });
  }

  @override
  void initState() {
    super.initState();
    getPref();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
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
                  onSaved: (val) => _password = val!,
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Email cannot be empty';
                    }
                    else
                      return null;
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
                  onSaved: (val) => _password = val!,
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
                      Navigator.pushNamed(context, '/homePageSamagyan');
                    }
                  },
                  child: Text(
                    'Login',
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

  savePref(int value,String user, String pass) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", value);
      preferences.setString("user", user);
      preferences.setString("pass", pass);
      preferences.commit();
    });
  }

  @override
  void onLoginError(String error) {
    _showSnackBar(error);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(myUser user) async {

    if(user != null){
      savePref(1,user.email, user.password);
      _loginStatus = LoginStatus.signIn;
    }else{
      _showSnackBar("Login Gagal, Silahkan Periksa Login Anda");
      setState(() {
        _isLoading = false;
      });
    }

  }

}



