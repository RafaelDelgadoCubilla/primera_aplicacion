import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final miestilo = TextStyle(fontSize: 25.0);
  final contador = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //contador = contador + 1;
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
              style: miestilo,
            ),
            Text(
              '$contador',
              style: miestilo,
            ),
          ],
        )));
  }
}
