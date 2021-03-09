import 'dart:math';
import 'package:flutter/material.dart';

class BolaOchoMagica extends StatefulWidget {
  @override
  _BolaOchoMagicaState createState() => _BolaOchoMagicaState();
}

class _BolaOchoMagicaState extends State<BolaOchoMagica> {
  var _estilo =
      TextStyle(color: Colors.white, fontSize: 35, fontFamily: 'Pacifico');
  Random rand = Random();
  var randBola = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Raúl Peñate',
          style: _estilo,
        ),
        centerTitle: true,
        backgroundColor: Colors.red[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _crearImagenes(),
            SizedBox(
              width: 40,
            ),
            Text('Magic 8-ball', style: _estilo),
            SizedBox(height: 40),
            _crearBotones()
          ],
        ),
      ),
      backgroundColor: Colors.blue[800],
    );
  }

  void _generarRandom() => setState(() => randBola = (rand.nextInt(5) + 1));

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          child: Icon(
            Icons.autorenew_rounded,
            size: 50,
          ),
          backgroundColor: Colors.red[800],
          splashColor: Colors.yellow[900],
          hoverElevation: 3.0,
          onPressed: () {
            _generarRandom();
            print('hola');
          },
        )
      ],
    );
  }

  Widget _crearImagenes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('img/ball' + randBola.toString() + '.png'),
          width: 300,
          height: 330,
        ),
      ],
    );
  }
}
