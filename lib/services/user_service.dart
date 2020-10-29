import 'package:flutter/widgets.dart';
import 'package:states/models/users.dart';

class UserService with ChangeNotifier {
  Users _users;

  Users get user => _users;
  bool get userExist => _users != null ? true : false;
  set user(Users users) {
    _users = users;
    notifyListeners();
  }

  void changeAge(int age) {
    _users.edad = age;
    notifyListeners();
  }

  void removeUser() {
    _users = null;
    notifyListeners();
  }

  void setProfesiones(List<String> profesiones) {
    _users.profesiones = profesiones;
    notifyListeners();
  }

  void addProfesiones() {
    _users.profesiones.add('Profesion ${_users.profesiones.length + 1}');
    notifyListeners();
  }
}
