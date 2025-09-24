
import 'package:flutter/material.dart';
import 'package:frontend/widgets/quick_action_button.dart';
import 'package:frontend/widgets/security_status_banner.dart';
import 'package:frontend/widgets/summary_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          SecurityStatusBanner(isAllClear: true), // Example
          SizedBox(height: 20),
          SummaryCard(
            title: 'Current Balance',
            value: '\$1,234.56',
            icon: Icons.account_balance_wallet,
          ),
          SummaryCard(
            title: 'Income This Week',
            value: '\$456.78',
            icon: Icons.trending_up,
          ),
          SummaryCard(
            title: 'Last Transaction',
            value: '-\$50.00',
            icon: Icons.receipt,
          ),
          SizedBox(height: 20),
          QuickActionButton(title: 'Request Payment', icon: Icons.payment),
          QuickActionButton(title: 'Transfer Funds', icon: Icons.send),
        ],
      ),
    );
  }
}
