part of 'user_bloc.dart';

abstract class UserEvent {}

class ActivateUser extends UserEvent 
{

  final Users users;

  ActivateUser(this.users);
}

class ChangeAge extends UserEvent{

  final int edad;

  ChangeAge(this.edad);
}

class AddProfesion extends UserEvent{
  final String profesion;

  AddProfesion(this.profesion);

}

class RemoveUser extends UserEvent{}