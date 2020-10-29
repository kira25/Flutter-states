import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:states/models/users.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectUser(Users users) {
    emit(UserActive(users));
  }

  void changeAge(int age) {
    final currenState = state;
    if (currenState is UserActive) {
      final newUser = currenState.users.copyWith(edad: 30);
      emit(UserActive(newUser));
    }
  }

  void addProfesion() {
    final currentState = state;
    if (currentState is UserActive) {
      final newProfesiones = [
        ...currentState.users.profesiones,
        'Profesion ${currentState.users.profesiones.length}'
      ];
      final newUser = currentState.users.copyWith(profesiones: newProfesiones);
      emit(UserActive(newUser));
    }
  }

  void deleteUser() {
    emit(UserInitial());
  }
}
