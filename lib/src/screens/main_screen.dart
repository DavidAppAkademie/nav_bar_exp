import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // State...
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (i) {
          setState(() {
            index = i;
          });
        },
        selectedIndex: index,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_balance),
            icon: Icon(Icons.account_balance_outlined),
            label: 'Banking',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.task),
            icon: Icon(Icons.task_outlined),
            label: 'Aufgabe',
          )
        ],
      ),
      body: [
        // 0-tes Element
        const Center(
          child: Text("Home"),
        ),

        // 1-tes Elementr

        const Center(
          child: Text("Banking"),
        ),

        // 2-tes Element
        const Center(
          child: Text("Aufgabe"),
        )
      ][index],
    );
  }
}
