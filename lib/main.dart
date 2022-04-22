import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: const Icon(Icons.menu),
        title: const Text(
          'Telegram',
          style: TextStyle(fontSize: 25),
        ),
        actions: const [Icon(Icons.search)],
      ),
      body: ListView(
        children: [
          _listItem(
            name: 'Amazon Shop'
          ),
          _listItem(
            name: 'MITHYA'
          ),
          _listItem(
            name: 'A THURSDAY'
          ),
          _listItem(
            name: 'RRR'
          ),
          _listItem(
            name: 'Kartik'
          ),
          _listItem(
            name: 'Youth Eduction'
          ),
          _listItem(
            name: 'Spider-Man'
          ),
          _listItem(
            name: 'BEST SELLER'
          ),
          _listItem(
            name: 'Shradha'
          ),
          _listItem(
            name: 'Money Heist'
          ),
          _listItem(
            name: 'KGF 2'
          ),
          _listItem(
            name: 'Netflix'
          ),
          _listItem(
            name: 'Gullak'
          ),
          _listItem(
            name: 'The Famliy Man'
          )
        ],
      ),
    );
  }
}

Widget _listItem({String? name}) {
  return Card(
    color: Colors.blue[400],
    child: ListTile(
      dense: true,
      onTap: () => (''),
      leading: CircleAvatar(
        child: ClipRRect(borderRadius: BorderRadius.circular(50)),
      ),
      title: Text(
        '$name',
        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
      ),
    ),
  );
}
