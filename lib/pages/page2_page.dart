import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states/models/users.dart';
import 'package:states/services/user_service.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    // por defecto listen: true para escuchar cambios
    // en caso este dentro de una funcion seria listen:false porque no necesito redibujar el metodo
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: userService.userExist
            ? Text(userService.user.name)
            : Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () => userService.user = Users(
                  edad: 26,
                  name: 'Erick',
                  profesiones: ['Flutter Developer', 'Gamer']),
              child: Text('Establecer usuario'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () => userService.changeAge(30),
              child: Text('Cambiar edad'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () =>
                  userService.setProfesiones(['Footbal player', 'Home office']),
              child: Text('Setear profesion'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () => userService.addProfesiones(),
              child: Text('Añadir profesion'),
            ),
          ],
        ),
      ),
    );
  }
}
