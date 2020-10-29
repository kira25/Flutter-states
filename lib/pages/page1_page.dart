import 'package:flutter/material.dart';

class Page1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessibility),
          onPressed: () => Navigator.pushNamed(context, 'pagina 2')),
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: UserInformation(),
    );
  }
}

class UserInformation extends StatelessWidget {
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
            title: Text('nombre:'),
          ),
          ListTile(
            title: Text('edad:'),
          ),
          Text('profesiones',style: TextStyle(fontSize: 28),),
          Divider(),
          ListTile(
            title: Text('profesion 1'),
          ),
          ListTile(
            title: Text('profesion 1'),
          ),
          ListTile(
            title: Text('profesion 1'),
          )
        ],
      ),
    );
  }
}
