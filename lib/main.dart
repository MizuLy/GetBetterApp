import 'package:flutter/material.dart';
import 'package:flutterassignment/pages/profile.dart';
import 'package:flutterassignment/pages/timer.dart';
import 'package:flutterassignment/pages/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(fontFamily: 'Jersey10'),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4E342E),
      appBar: AppBar(
        title: Text("Get Better", style: TextStyle(color: Color(0xFFD7B49E))),
        backgroundColor: Color(0xFF6D4C41),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Welcome back, Mizu",
            style: TextStyle(fontSize: 50, color: Color(0xFFD7B49E)),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Timer()),
                  );
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFFD7B49E),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Icon(Icons.timer, color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ToDo()),
                  );
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFFD7B49E),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Icon(Icons.list_alt, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF6D4C41),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              icon: Icon(
                Icons.account_circle_outlined,
                size: 40,
                color: Color(0xFFD7B49E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
