
import 'package:flutter/material.dart';

class SecurityLog extends StatelessWidget {
  const SecurityLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Security Log',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildLogItem(Icons.check_circle, Colors.green, 'Successful Login', 'Oct 26, 2023, 10:00 AM'),
            _buildLogItem(Icons.warning, Colors.red, 'Blocked SIM Swap Attempt', 'Oct 25, 2023, 08:30 PM'),
          ],
        ),
      ),
    );
  }

  Widget _buildLogItem(IconData icon, Color color, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
