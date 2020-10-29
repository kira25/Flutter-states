part of 'user_cubit.dart';

abstract class UserState {}

class UserInitial extends UserState {
  final userExist = false;
}

class UserActive extends UserState{
    final userExist = true;
  final Users users;

  UserActive(this.users);

}

