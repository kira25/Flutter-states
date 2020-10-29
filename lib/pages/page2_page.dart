import 'package:flutter/material.dart';

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
              onPressed: () {},
              child: Text('Establecer usuario'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
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
