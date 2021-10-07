import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _miestilo = TextStyle(fontSize: 25.0);
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: _crearBotones(),
        appBar: AppBar(
          centerTitle: true,
          title: SafeArea(child: Text('Texto_APPBAR')),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: null, 
                      child: Text('+', style: _miestilo,)
                    ),
                    TextButton(
                      onPressed: null, 
                      child: Text('+', style: _miestilo,)
                    ),
                    TextButton(
                      onPressed: null, 
                      child: Text('+', style: _miestilo,)
                    )
                  ],
                )           
              ] ,
            )
          )
      );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        Boton3(),
        Expanded(child: SizedBox()),
        Boton2(),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Boton4(),
            Boton1(),
            Boton1(),
          ],
        )

      ],
    );
  }

  Widget Boton1()
  {
    return FloatingActionButton(
          onPressed: suma,
          child: Icon(Icons.add),
        );
  }
  Widget Boton2()
  {
    return FloatingActionButton(
          onPressed: resta,
          child: Icon(Icons.remove),
        );
  }
  Widget Boton3()
  {
    return FloatingActionButton(
          onPressed: cero,
          child: Icon(Icons.exposure_zero),
        );
  }
  Widget Boton4()
  {
    return FloatingActionButton(
          onPressed: cincuenta,
          child: Icon(Icons.exposure_zero),
        );
  }

  void suma() {
    setState(() => _contador++);
  }
  void resta() {
    setState(() => _contador--);
  }
  void cero() {
    setState(() => _contador=0);
  }

  void cincuenta() {
    setState(() => _contador=50);
  }
}
