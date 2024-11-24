import 'package:flutter/material.dart';

class FavouitesPage extends StatelessWidget {
  const FavouitesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Favouites'),
        backgroundColor: Colors.blue[300],
      ),
    );
  }
}