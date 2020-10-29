import 'package:meta/meta.dart';

class Users {
  String name;
  int edad;
  List<String> profesiones;

  Users({@required this.edad, this.name,  this.profesiones}): assert(name != null);
  //assert fuerza un error en base a una validacion
}
