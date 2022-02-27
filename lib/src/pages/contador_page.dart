import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 30);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    //metodo para dibujar o redibujar el widget
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("stateful"),
          elevation: 2.3,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Numero de clicks:",
              style: _estiloTexto,
            ),
            Text('${_conteo}', style: _estiloTexto)
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.restore)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add)),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _disminuir, child: Icon(Icons.remove)),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

  void _disminuir() {
    setState(() {
      if (_conteo > 0) {
        _conteo--;
      }
    });
  }

  void _reset() {
    setState(() {
      _conteo = 0;
    });
  }
}
