import 'package:flutter/material.dart';

// Define Home widget
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 40, color: Colors.yellow),
      ),
    );
  }
}

// Define Search widget
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 40, color: Colors.white),
      ),
    );
  }
}

// Define YourLibrary widget
class YourLibrary extends StatelessWidget {
  const YourLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Your Library',
        style: TextStyle(fontSize: 40, color: Colors.white),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // List of tab widgets
  final List<Widget> tabs = [
    Home(),
    Search(),
    YourLibrary(),
  ];

  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: tabs[currentTabIndex], // Display current tab content
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black45,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: currentTabIndex,
        onTap: (index) {
          setState(() {
            currentTabIndex = index; // Update currentTabIndex on tap
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Your Library',
          ),
        ],
      ),
    );
  }
}
