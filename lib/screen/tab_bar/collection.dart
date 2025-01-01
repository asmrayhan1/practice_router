import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_router/app_routes/routes.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              "Collection",
              style: TextStyle(fontSize: 30),
            ),
          ),
          TextButton(onPressed: () {
            context.go('/home/nest');
          }, child: Text("Nest Page"))
        ],
      ),
    );
  }
}
