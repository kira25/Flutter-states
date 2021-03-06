import 'package:flutter/material.dart';
import 'package:states/pages/page1_page.dart';
import 'package:states/pages/page2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'States App',
      initialRoute: 'pagina 1',
      routes: {'pagina 1': (_) => Page1Page(), 'pagina 2': (_) => Page2Page()},
    );
  }
}
