import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states/pages/page1_page.dart';
import 'package:states/pages/page2_page.dart';
import 'package:states/services/user_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                UserService()), // lazy: false aplica el provider al inicio del app
      ],
      child: MaterialApp(
        title: 'States App',
        initialRoute: 'pagina 1',
        routes: {
          'pagina 1': (_) => Page1Page(),
          'pagina 2': (_) => Page2Page()
        },
      ),
    );
  }
}
