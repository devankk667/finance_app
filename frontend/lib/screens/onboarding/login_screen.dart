
import 'package:flutter/material.dart';
import 'package:frontend/screens/dashboard/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVerifying = false;

  void _verifyPhoneNumber() {
    setState(() {
      _isVerifying = true;
    });

    // Simulate a network request
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isVerifying = false;
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            if (_isVerifying)
              const CircularProgressIndicator()
            else
              ElevatedButton(
                onPressed: _verifyPhoneNumber,
                child: const Text('Secure Verification'),
              ),
          ],
        ),
      ),
    );
  }
}
