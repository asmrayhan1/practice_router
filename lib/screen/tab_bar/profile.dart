import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ValueNotifier<bool> checkBox = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ValueListenableBuilder(valueListenable: checkBox, builder: (context, value, child) {
            return Row(
              children: [
                Text("${checkBox.value}"),
                Checkbox(value: value, onChanged: (currentValue) {
                  checkBox.value = currentValue!;
                },),
              ],
            );
          },),
          const Center(
            child: Text(
              "Profile",
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
