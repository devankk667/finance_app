
import 'package:flutter/material.dart';
import 'package:frontend/widgets/security_log.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile & Security'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          CircleAvatar(
            radius: 50,
            // Placeholder for user's profile picture
            child: Icon(Icons.person, size: 50),
          ),
          SizedBox(height: 20),
          Text(
            'John Doe', // Placeholder for user's name
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          SecurityLog(),
        ],
      ),
    );
  }
}
