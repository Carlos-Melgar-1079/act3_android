import 'package:flutter/material.dart';

class Pantallaseis extends StatelessWidget {
  const Pantallaseis({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autocomplete Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return listItems.where((String item) {
                  return item.contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String item) {
                print('The $item was selected');
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
      ),
    );
  }
}
