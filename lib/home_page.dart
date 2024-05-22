import 'package:flutter/material.dart';
import 'package:flutter_application_spotify_clone/playlist.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          elevation: 10.0,
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Playlist',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 500,
          color: Colors.black,
          child: Column(
            children: [
              buildRow('assets/2.jpg', 'Paradise Songs Album'),
              buildRow('assets/3.jpeg', 'Imagine Dragon Album'),
              buildRow('assets/4.webp', 'Nici Minaj Songs Album'),
              buildRow('assets/5.jpg', 'The Weeknd Songs Album'),
              buildRow('assets/6.webp', 'Taylor Swift Songs Album'),
              buildRow('assets/7.jpg', 'Madonna Songs Album'),
              buildRow('assets/8.jpeg', 'Joy Division Songs Album'),
              buildRow('assets/9.jpg', ' Big Sean Songs Album'),
              const SizedBox(height: 5),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const playlist()),
                    );
                  },
                  child: const Text(
                    'MusicPlay',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imagePath,
            width: 90,
            height: 100,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
