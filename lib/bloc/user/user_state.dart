part of 'user_bloc.dart';

class UserState {
  final bool userExist;
  final Users users;
  //Iniciliazar o asignar por medio del constructor
  UserState({Users user})
      : users = user ?? null,
        userExist =
            (user != null) ? true : false; //Referencia: nombre y opcional

  //CopyWith : conservar instancias mientras incrementen
  UserState copyWith({Users user}) => UserState(user: user ?? this.users);

  UserState initialState() => UserState();
}
