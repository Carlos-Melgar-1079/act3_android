import 'package:flutter/material.dart';

//! AnimatedPhysicalModel

class Pantallacuatro extends StatefulWidget {
  const Pantallacuatro({Key? key}) : super(key: key);

  @override
  PantallacuatroState createState() => PantallacuatroState();
}

class PantallacuatroState extends State<Pantallacuatro> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedPhysicalModel(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            elevation: _isFlat ? 0 : 6.0,
            shape: BoxShape.rectangle,
            shadowColor: Colors.black,
            color: Colors.white,
            child: const SizedBox(
              height: 120.0,
              width: 120.0,
              child: Icon(Icons.android_outlined),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Click'),
            onPressed: () {
              setState(() {
                _isFlat = !_isFlat;
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
