import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loop extends StatefulWidget {
  final data;
  const Loop({super.key, required this.data});

  @override
  State<Loop> createState() => _LoopState();
}

class _LoopState extends State<Loop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Working -> ${widget.data['name']}"),
      ),
    );
  }
}
