class myUser {
  late int _id;
  late String _email;
  late String _password;

  myUser(this._email, this._password);

  myUser.fromMap(dynamic obj) {
    this._email = obj['email'];
    this._password = obj['password'];
  }

  String get email => _email;
  String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["password"] = _password;
    return map;
  }
}