import 'package:flutter/material.dart';
import 'package:states/models/users.dart';
import 'package:states/services/user_service.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: userService.userStream,
          builder: (context, snapshot) {
            return snapshot.hasData
                ? Text('${snapshot.data.name}')
                : Text('Pagina 2');
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userService.loadUser(Users(name: 'Erick', edad: 26));
              },
              child: Text('Establecer usuario'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userService.changeAge(30);
              },
              child: Text('Cambiar edad'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text('Añadir profesion'),
            ),
          ],
        ),
      ),
    );
  }
}
