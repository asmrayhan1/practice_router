import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_router/app_routes/routes.dart';
import 'package:practice_router/app_routes/routes_name.dart';
import 'package:practice_router/screen/tab_bar/category.dart';
import 'package:practice_router/screen/tab_bar/collection.dart';
import 'package:practice_router/screen/tab_bar/profile.dart';
import 'package:practice_router/screen/tab_bar/task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print("index = ${index}");
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Collection(),
    Task(),
    Category(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Networking",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
                onTap: () {
                  context.goNamed(RoutesName.logoutRoute,
                      pathParameters: {'id': "Rayhan", 'name': "Chy"}
                      // extra: {
                      //   "fullName": "Rayhan",
                      //   "age": 22,
                      // },

                      // extra: {
                      //   "fullName": "Rayhan",
                      //   "age": "22"
                      // }
                      );
                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogIn()));
                },
                child: const Icon(
                  Icons.logout,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: widget.navigationShell,
      backgroundColor: Color(0xff547D86),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.navigationShell.currentIndex,
        // This will keep track of the selected index
        onTap: (index) {
          widget.navigationShell.goBranch(
            index,
            initialLocation: index == widget.navigationShell.currentIndex
          );
        },
        // Function to handle tap events

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: Colors.blue, // Change text color for the selected label
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_sharp),
            label: 'Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
