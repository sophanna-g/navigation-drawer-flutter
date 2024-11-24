import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sophanna'),
      ),
      body: Image.network(
      'https://img.pikbest.com/wp/202345/male-avatar-image-in-the-circle_9588978.jpg!sw800'
      ),
    );
  }
}