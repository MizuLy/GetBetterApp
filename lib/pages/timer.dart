import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4E342E),
      appBar: AppBar(
        title: Text(
          "Pomodoro Timer",
          style: TextStyle(color: Color(0xFFD7B49E)),
        ),
        backgroundColor: Color(0xFF6D4C41),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lock in",
              style: TextStyle(
                fontFamily: 'Jersey10',
                fontSize: 60,
                color: Color(0xFFD7B49E),
              ),
            ),
            Text(
              "30:00",
              style: TextStyle(
                fontFamily: 'Jersey10',
                fontSize: 128,
                color: Color(0xFFD7B49E),
              ),
            ),
            SizedBox(height: 25),

            // ElevatedButton.icon(
            //   onPressed: () {},
            //   label: Text("Start"),
            //   icon: Icon(Icons.play_arrow_rounded),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFFD7B49E),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.play_arrow_rounded, size: 64),
                  ),
                ),
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFFD7B49E),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.pause, size: 64),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
