import 'package:contador2_vinicius/app/pages/Page.default.dart';
import 'package:contador2_vinicius/app/pages/page.home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageHome(title: 'Contador V2'),
      initialRoute: '/',
      routes: {
        '/page2': (context) => PageDefault(
              msg: 'Pagina2',
              msgButton: 'Ir para page 3',
              route: '/page3',
            ),
        '/page3': (context) => PageDefault(
              msg: 'Pagina3',
              msgButton: 'Ir para Home',
              route: '/',
            )
      },
    );
  }
}
