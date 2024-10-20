import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  Counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A40),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF1A1A40),
        title: Text(
          "اسْتَغْفِرُوا رَبَّكُمْ إِنَّهُ كَانَ غَفَّارًا",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 3,
              backgroundColor: Color(0xFF3E497A),
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.white,
                child: Text(
                  count.toString(),
                  style: TextStyle(fontSize: 40, color: Color(0xFF1A1A40)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Counter();
                },
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Color(0xFF4ECCA3),
                    padding: EdgeInsets.all(15),
                    maximumSize: Size(80, 80)),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 50,
                )),
                SizedBox(height: 25,),
            ElevatedButton(
                onPressed: () {
                  reset();
                },
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Color(0xFF4ECCA3),
                    padding: EdgeInsets.all(13),
                    maximumSize: Size(80, 80)),
                child: Icon(
                  Icons.refresh,
                  color: Colors.red,
                  size: 48,
                )),
          ],
        ),
      ),
    );
  }
}
