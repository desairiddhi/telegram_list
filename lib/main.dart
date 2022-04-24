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
            name: 'Amazon Shop',
            image: "https://wallpaperaccess.com/full/1383586.jpg",
          ),
          _listItem(
            name: 'MITHYA',
            image:'https://static.toiimg.com/photo/89520203.jpeg',
          ),
          _listItem(
            name: 'A THURSDAY',
            image:'https://wpage.in/wp-content/uploads/2022/02/A-Thursday-2022-full-Movie-Download-in-Dual-Audio-720p.jpg',
          ),
          _listItem(
            name: 'RRR',
            image:'https://stat1.bollywoodhungama.in/wp-content/uploads/2021/11/RRR-3.jpg',
          ),
          _listItem(
            name: 'Youth Eduction',
            image:'https://dcassetcdn.com/design_img/2702092/611628/611628_14701196_2702092_f0b6e8d3_image.png',
          ),
          _listItem(
            name: 'Spider-Man',
            image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzB3dZWOzjUPlBBn9LB149ha8oUGP-M6qcsBlCV9rk7epI9Q5KyNtfUsspPb4H3TN5IEk&usqp=CAU',
          ),
          _listItem(
            name: 'BEST SELLER',
            image:'https://m.media-amazon.com/images/M/MV5BZDZlNTg3MzQtMTU3NC00MDIyLWE5NzItMDMyZTZmZTI4YTNjXkEyXkFqcGdeQXVyMTQ5MDMwNzA4._V1_.jpg',
          ),
          _listItem(
            name: 'Money Heist',
            image:'https://m.media-amazon.com/images/M/MV5BNDJkYzY3MzMtMGFhYi00MmQ4LWJkNTgtZGNiZWZmMTMxNzdlXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_FMjpg_UX1000_.jpg',
          ),
          _listItem(
            name: 'KGF 2',
            image:'https://moviegalleri.net/wp-content/uploads/2019/12/Hero-Yash-KGF-Chapter-2-First-Look-Poster-HD.jpg',
          ),
          _listItem(
            name: 'Netflix',
            image:'https://wallpaperaccess.com/full/2772922.png',
          ),
          _listItem(
            name: 'Gullak',
            image:'https://popcornreviewss.com/wp-content/uploads/2021/01/gullak-2019-hindi-web-series-sonyliv-popcorn-reviewss.jpg',
          ),
          _listItem(
            name: 'The Famliy Man',
            image:'https://upload.wikimedia.org/wikipedia/en/d/dc/The_Family_Man.jpeg',
          )
        ],
      ),
    );
  }
}

Widget _listItem({String? name,String? image}) {
  return Card(
    color: Colors.blue[200],
    child: ListTile(
      //dense: true,
      onTap: () => (''),
      leading: CircleAvatar(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(300),
          child: Image.network('$image',
          fit: BoxFit.fitHeight,
          height: 500,
          ),
          ),
      ),
      
      title: Text(
        '$name',
        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
      ),
    ),
  );
}
