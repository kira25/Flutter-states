import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:states/bloc/user/user_cubit.dart';
import 'package:states/models/users.dart';

class Page1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessibility),
          onPressed: () => Navigator.pushNamed(context, 'pagina 2')),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () => context.bloc<UserCubit>().deleteUser())
        ],
        title: Text('Pagina 1'),
      ),
      body: BodyScaffold(),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (_, state) {
        print(state);

        switch (state.runtimeType) {
          case UserInitial:
            return Center(child: Text('No user information'));
            break;
          case UserActive:
            return UserInformation(users: (state as UserActive).users);
            break;
          default:
            return Container();
        }
      },
    );
  }
}

class UserInformation extends StatelessWidget {
  final Users users;

  const UserInformation({this.users});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('nombre: ${users.name}'),
          ),
          ListTile(
            title: Text('edad: ${users.edad}'),
          ),
          Text(
            'profesiones',
            style: TextStyle(fontSize: 28),
          ),
          Divider(),
          ...users.profesiones
              .map((e) => ListTile(
                    title: Text(e),
                  ))
              .toList()
        ],
      ),
    );
  }
}
