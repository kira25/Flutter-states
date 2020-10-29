class Users {
  final String name;
  final int edad;
  final List<String> profesiones;

  Users({this.edad, this.name, this.profesiones});

  copyWith({String name, int edad, List<String> profesiones}) => Users(
      name: name ?? this.name,
      edad: edad ?? this.edad,
      profesiones: profesiones ?? this.profesiones);
}
