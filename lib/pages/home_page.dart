import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Curved Navbar'),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.deepPurple.shade200,
          color: Colors.deepPurple,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            print(IndexedSemantics(index: index));
          },
          items: [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.favorite, color: Colors.white),
            Icon(Icons.settings, color: Colors.white),
          ]),
    );
  }
}
