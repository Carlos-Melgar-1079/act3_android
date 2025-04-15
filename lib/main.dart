import 'package:flutter/material.dart';
import 'package:act5_andoid_1079/pagina_inicial.dart';
import 'package:act5_andoid_1079/pagina_dos.dart';
import 'package:act5_andoid_1079/pagina_tres.dart';
import 'package:act5_andoid_1079/pagina_cuatro.dart';
import 'package:act5_andoid_1079/pagina_cinco.dart';
import 'package:act5_andoid_1079/pagina_seis.dart';
import 'package:act5_andoid_1079/pagina_siete.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const Pantallados(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const Pantallacuatro(),
        '/pantalla5': (context) => const Pantallacinco(),
        '/pantalla6': (context) => const Pantallaseis(),
        '/pantalla7': (context) => const Pantallasiete(),
      },
    );
  }
}
