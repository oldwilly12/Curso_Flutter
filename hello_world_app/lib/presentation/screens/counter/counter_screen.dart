import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen(
      {super.key}); // inicializacion para la llave del statefulwidget o constructor

  @override
  State<CounterScreen> createState() =>
      _CounterScreenState(); // cuando se crea el counterScreen se manda a llamar a la creacion del estado y invocacions de otra clase de abajo
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.bold)),
            const Text('Clicks', style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          // setState(() {
          //   clickCounter++;
          // });
          clickCounter++;
          setState(() {}); // funcion para renderizar el widget
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
