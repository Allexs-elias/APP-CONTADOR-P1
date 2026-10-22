import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter screen'),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: 'Reiniciar contador',
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // El ajuste permite mostrar cifras largas sin desbordar el ancho.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '$clickCounter',
                  key: const ValueKey('counterValue'),
                  style: const TextStyle(
                    fontSize: 160,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
            Text(
              clickCounter == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'sumar',
            tooltip: 'Sumar uno',
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 'restar',
            tooltip: 'Restar uno',
            shape: const StadiumBorder(),
            onPressed: () {
              if (clickCounter > 0) {
                setState(() {
                  clickCounter--;
                });
              }
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
