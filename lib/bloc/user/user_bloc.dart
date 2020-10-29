import 'package:bloc/bloc.dart';
import 'package:states/models/users.dart';
part 'user_state.dart';

part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState());

//async* : Retornar un Stream
//async : Retornar un Future
  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is ActivateUser) {
      yield state.copyWith(user: event.users);
    } else if (event is ChangeAge) {
      yield state.copyWith(user: state.users.copyWith(edad: event.edad));
    } else if (event is AddProfesion) {
      final newProfesion = [...state.users.profesiones, '${event.profesion}'];
      yield state.copyWith(
          user: state.users.copyWith(profesiones: newProfesion));
    } else if (event is RemoveUser) {
      yield state.initialState();
    }
    print('UserState');
  }
}
