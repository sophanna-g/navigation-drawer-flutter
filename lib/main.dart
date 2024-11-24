import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

void main(){
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationDrawerScreen(),
    );
  }
}