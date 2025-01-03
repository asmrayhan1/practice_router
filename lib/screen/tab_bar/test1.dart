import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_router/app_routes/routes.dart';

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(" Test1", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("This page is working", style: TextStyle(fontSize: 30),),
            Text("Data is not found", style: TextStyle(fontSize: 20),),
            Text("Wait few minitue", style: TextStyle(fontSize: 20),),
            ElevatedButton(
                onPressed: (){
                  context.goNamed('loop', extra: {
                    'name':'Abcd',
                    'studentId':1235,
                    'status':'admitted',
                    'isSelected':true
                  });
                },
                child: Text("Click"),
            )
          ],
        ),
      ),
    );
  }
}
