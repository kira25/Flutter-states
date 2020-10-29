import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:states/bloc/user/user_bloc.dart';
import 'package:states/models/users.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                //Call UserBloc
                Users newUser = Users(
                    name: 'Erick',
                    edad: 26,
                    profesiones: ['Fullstack Developer']);
                BlocProvider.of<UserBloc>(context).add(ActivateUser(newUser));
              },
              child: Text('Establecer usuario'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                BlocProvider.of<UserBloc>(context).add(ChangeAge(30));
              },
              child: Text('Cambiar edad'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                  BlocProvider.of<UserBloc>(context).add(AddProfesion('Tennis'));
              },
              child: Text('Añadir profesion'),
            ),
          ],
        ),
      ),
    );
  }
}
