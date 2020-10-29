import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states/models/users.dart';
import 'package:states/services/user_service.dart';

class Page1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessibility),
          onPressed: () => Navigator.pushNamed(context, 'pagina 2')),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                if (userService.userExist) {
                  userService.removeUser();
                }
              })
        ],
        title: Text('Pagina 1'),
      ),
      body: userService.userExist
          ? UserInformation(users: userService.user)
          : Center(
              child: Text('No hay usuario'),
            ),
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
            title: Text('edad:${users.edad}'),
          ),
          Text(
            'profesiones',
            style: TextStyle(fontSize: 28),
          ),
          Divider(),
          //... destructuracion para enviar cada elemento
          ...users.profesiones.map((e) => ListTile(
            title: Text(e),
          )).toList(),
        
          
        ],
      ),
    );
  }
}
