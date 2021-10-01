import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _miestilo = TextStyle(fontSize: 25.0);
  int _contador = -50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _contador++;
            setState(() {
              
            });
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Texto_APPBAR'),
          //elevation: 20.3,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hola Mundo!!!',
              style: _miestilo,
            ),
            Text(
              '$_contador',
              style: _miestilo,
            ),
          ],
        )));
  }
}
