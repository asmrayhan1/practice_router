import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_router/app_routes/routes.dart';

class NestedNavigation extends StatefulWidget {
  const NestedNavigation({super.key});

  @override
  State<NestedNavigation> createState() => _NestedNavigationState();
}

class _NestedNavigationState extends State<NestedNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     context.pop();
        //   },
        //   icon: Icon(
        //     Icons.arrow_back,
        //   ),
        // ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Nested Page"),
          )
        ],
      ),
    );
  }
}
