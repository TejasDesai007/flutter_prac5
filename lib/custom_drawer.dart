import 'package:flutter/material.dart';
import 'faculty.dart';
import 'MissionVision.dart';
import 'homeScreen.dart'; // Import the HomeScreen

class CustomDrawer extends StatelessWidget {
  final TabController tabController;

  CustomDrawer({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.grey, Color(0xFF090D09)],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              ),
            ),
            child: Text(
              'MCA Department',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate back to the HomeScreen
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
                (route) => false, // Remove all routes from the stack
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Faculty'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FacultyPage(tabController: tabController),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
              // Handle Notifications navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.visibility),
            title: Text('Vision & Mission'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      VisionMissionPage(tabController: tabController),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
