import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // inicializacion para la llave del statelesswidget
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // quitar el banner de debug etiqueta
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('Hello, World!')),
      ),
    );
  }
}
