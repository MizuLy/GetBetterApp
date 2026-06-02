import 'package:flutter/material.dart';

Widget _statBox(String value, String label) {
  return Container(
    width: 90,
    height: 70,
    decoration: BoxDecoration(
      color: Color(0xFF6D4C41),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(value, style: TextStyle(color: Color(0xFFD7B49E), fontSize: 22)),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    ),
  );
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4E342E),
      appBar: AppBar(
        backgroundColor: Color(0xFF6D4C41),
        title: Text("My Profile", style: TextStyle(color: Color(0xFFD7B49E))),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              // banner
              Container(
                width: double.infinity,
                height: 150,
                color: Color(0xFF6D4C41),
              ),
              // pfp overlapping the banner
              Positioned(
                bottom: -60,
                child: ClipOval(
                  child: Image.asset("assets/images/smol.jpeg", width: 120),
                ),
              ),
            ],
          ),
          SizedBox(height: 60), // space for the overlapping pfp
          Text(
            "Mizu",
            style: TextStyle(color: Color(0xFFD7B49E), fontSize: 40),
          ),
          Text(
            "Your typical Ctrl C Ctrl V Programmer",
            style: TextStyle(color: Color(0xFFD7B49E), fontSize: 20),
          ),
          SizedBox(height: 20),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       "12 Tasks Completed",
          //       style: TextStyle(color: Color(0xFFD7B49E)),
          //     ),
          //     Text("5 Days Streak", style: TextStyle(color: Color(0xFFD7B49E))),
          //     Text(
          //       "3.2 Hours focused",
          //       style: TextStyle(color: Color(0xFFD7B49E)),
          //     ),
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _statBox("12", "Tasks"),
              _statBox("5", "Streak"),
              _statBox("3.2h", "Focus"),
            ],
          ),
        ],
      ),
    );
  }
}
