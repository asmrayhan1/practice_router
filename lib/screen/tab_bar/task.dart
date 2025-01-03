import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_router/app_routes/routes.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                context.goNamed('test1');
              },
              child: Text("Click Here"),
          ),
          Center(child: Text("Task", style: TextStyle(fontSize: 30),))
        ],
      ),
    );
  }
}
