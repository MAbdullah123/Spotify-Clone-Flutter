import 'package:flutter/material.dart';
import 'package:flutter_application_spotify_clone/home_page.dart';

class playlist extends StatefulWidget {
  const playlist({Key? key}) : super(key: key);

  @override
  State<playlist> createState() => _playlistState();
}

class _playlistState extends State<playlist> {
  bool isPlaying = false;
  double progress = 0.4; // Example progress value between 0.0 and 1.0

  void togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Taylor Swift',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/6.webp',
              width: size.width,
              // height: size.height * 0.4,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Text(
                  'Blank Space',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Taylor Swift',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              color: Colors.grey[900],
              child: Slider(
                value: progress,
                onChanged: (value) {
                  setState(() {
                    progress = value;
                  });
                },
                activeColor: Colors.green,
                inactiveColor: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '3:45', // Example song duration
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              color: Colors.grey[900],
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.skip_previous_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                    IconButton(
                      icon: Icon(
                        isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                        size: 50,
                      ),
                      onPressed: togglePlayPause,
                    ),
                    Icon(
                      Icons.skip_next_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
