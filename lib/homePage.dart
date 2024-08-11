import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final bool isEcoMode;
  final Function toggleEcoMode;

  MyHomePage({required this.isEcoMode, required this.toggleEcoMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEcoMode ? 'Hôtels Écologiques' : 'Hôtels Normaux'),
        actions: [
          Switch(
            value: isEcoMode,
            onChanged: (value) {
              toggleEcoMode();
            },
          ),
        ],
      ),
      body: ListView(
        children: getHotels().map((hotel) {
          return ListTile(
            title: Text(hotel),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
    );
  }

  List<String> getHotels() {
    if (isEcoMode) {
      return ['Eco Hôtel 1', 'Eco Hôtel 2', 'Eco Hôtel 3'];
    } else {
      return ['Hôtel Normal 2', 'Hôtel Normal 1', 'Hôtel Normal 3'];
    }
  }
}
