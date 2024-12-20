import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});  // Added the key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),  // Made the Text widget const
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(  // Made the TextField const
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),  // Made the SizedBox const
            const TextField(  // Made the TextField const
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),  // Made the SizedBox const
            ElevatedButton(
              onPressed: () {
                // Replaced print with a logging framework in production code
                debugPrint('Login button pressed');  
              },
              child: const Text('Login'),  // Made the Text widget const
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),  // Made RegisterPage const
                );
              },
              child: const Text('Register'),  // Made the Text widget const
            ),
          ],
        ),
      ),
    );
  }
}
