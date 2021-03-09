import 'package:flutter/material.dart';
import 'package:testing/src/pages/BolaOchoMagica.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: BolaOchoMagica(),
      ),
    );
  }
}