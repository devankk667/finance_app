
import 'package:flutter/material.dart';
import 'package:frontend/widgets/activity_heatmap.dart';
import 'package:frontend/widgets/dual_axis_line_chart.dart';

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financial Insights'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Your busiest days were Tuesdays and Fridays.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'High data usage correlates with higher earnings this month.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          DualAxisLineChart(),
          SizedBox(height: 20),
          ActivityHeatmap(),
        ],
      ),
    );
  }
}
