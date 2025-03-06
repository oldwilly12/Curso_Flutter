import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  // inicializacion para la llave del statelesswidget
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // quitar el banner de debug etiqueta
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, // habilitar material 3 en todos los widgets
        colorSchemeSeed: Colors.purple,
      ),
      home: const CounterScreen(),
    );
  }
}
