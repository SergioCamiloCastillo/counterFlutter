import 'package:flutter/material.dart';
import 'package:flutterapp/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome to Flutter',
        home: Center(child: ContadorPage()));
  }
}
