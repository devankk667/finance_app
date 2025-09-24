
import 'package:flutter/material.dart';

class DualAxisLineChart extends StatelessWidget {
  const DualAxisLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Income vs. Network Activity',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Placeholder for the chart
            AspectRatio(
              aspectRatio: 1.7,
              child: Center(child: Text('Chart will be implemented here')),
            ),
          ],
        ),
      ),
    );
  }
}
