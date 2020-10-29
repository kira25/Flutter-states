import 'dart:async';

import 'package:states/models/users.dart';

class _UserService {
  Users _user;

  StreamController<Users> _userController =
      new StreamController<Users>.broadcast();

  Stream get userStream => _userController.stream;

  Users get user => _user;

  bool get userExist => _user != null ? true : false;

  void loadUser(Users user) {
    _user = user;
    _userController.add(user);
  }

  void changeAge(int age) {
    _user.edad = age;
    _userController.add(_user);
  }

  dispose() {
    _userController?.close();
  }
}

//singleton
final userService = new _UserService();
