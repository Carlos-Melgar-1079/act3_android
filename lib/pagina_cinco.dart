//! AnimatedSwitcher

import 'package:flutter/material.dart';

class Pantallacinco extends StatefulWidget {
  const Pantallacinco({Key? key}) : super(key: key);

  @override
  State<Pantallacinco> createState() => _PantallacincoState();
}

class _PantallacincoState extends State<Pantallacinco> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Text(
              '$_count',
              style: const TextStyle(fontSize: 40),
              key: ValueKey(_count),
            ),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
          ),
          ElevatedButton(
            child: const Text('Add'),
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
          ),
          const SizedBox(height: 20), // Espacio entre los widgets
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: const Text('Pantalla inicial'),
          ),
        ],
      ),
    );
  }
}
