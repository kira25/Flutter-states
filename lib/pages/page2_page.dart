import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:states/bloc/user/user_cubit.dart';
import 'package:states/models/users.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCubit = context.bloc<UserCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userCubit.selectUser(Users(
                    name: 'Erick',
                    edad: 26,
                    profesiones: ['Full Stack Developer', 'Gamer']));
              },
              child: Text('Establecer usuario'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userCubit.changeAge(30);
              },
              child: Text('Cambiar edad'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userCubit.addProfesion();
              },
              child: Text('Añadir profesion'),
            ),
          ],
        ),
      ),
    );
  }
}
