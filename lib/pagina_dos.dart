import 'package:flutter/material.dart';

//!AnimatedContainer

class Pantallados extends StatefulWidget {
  const Pantallados({Key? key}) : super(key: key);

  @override
  State<Pantallados> createState() => _PantalladosState();
}

class _PantalladosState extends State<Pantallados> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                width: selected ? 200.0 : 100.0,
                height: selected ? 100.0 : 200.0,
                color: selected ? Colors.blueGrey : Colors.white,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 75),
              ),
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
      ),
    );
  }
}
