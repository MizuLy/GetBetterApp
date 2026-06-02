import 'package:flutter/material.dart';

final List<String> todos = ["Dek", "Sleep", "Rest", "Somrak", "C"];

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _TodoState();
}

class _TodoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4E342E),
      appBar: AppBar(
        title: Text("To do list", style: TextStyle(color: Color(0xFFD7B49E))),
        backgroundColor: Color(0xFF6D4C41),
      ),
      body: ListView.separated(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              todos[index],
              style: TextStyle(color: Color(0xFFD7B49E), fontSize: 25),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Color(0xFF6D4C41),
                title: const Text(
                  'What is your plan today?',
                  style: TextStyle(color: Color(0xFFD7B49E), fontSize: 30),
                ),
                content: TextField(
                  style: TextStyle(color: Color(0xFFD7B49E), fontSize: 20),
                  maxLines: 2,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Enter what's on your mind",
                    hintStyle: TextStyle(
                      color: Color(0xFFD7B49E),
                      fontSize: 20,
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Color(0xFFD7B49E), fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Add',
                      style: TextStyle(color: Color(0xFFD7B49E), fontSize: 20),
                    ),
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: Color(0xFF6D4C41),
        foregroundColor: Color(0xFF6D4C41),
        child: Icon(Icons.add, color: Color(0xFFD7B49E)),
      ),
    );
  }
}
