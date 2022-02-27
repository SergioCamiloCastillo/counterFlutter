import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 30);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Esta es m"),
        elevation: 2.3,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Numero de clicks:",
            style: estiloTexto,
          ),
          Text('${conteo}', style: estiloTexto)
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hola mundo');
          //conteo += 1;
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
