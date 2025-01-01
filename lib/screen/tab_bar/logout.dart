import 'package:flutter/material.dart';

class LogoutScreen extends StatefulWidget {
  // LogoutScreen({super.key, this.data});

  // Map<String, dynamic>? data;

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: (widget.data != null)
        //     ? Text("${widget.data}")
        //     : const Text("No Data Found"),
      ),
    );
  }
}
