import 'package:flutter/material.dart';
import 'send_money_page.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Use 'super.key' to pass the key to the superclass

  @override
  Widget build(BuildContext context) {
    // Define a common button style
    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.blue.shade600, // Replace 'primary' with 'backgroundColor'
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      textStyle: const TextStyle(fontSize: 16),
    );

    // Define a common text style for headings
    final headingStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.blue.shade700,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('PocketPay'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.blue.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome text with container for style
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Text(
                  'Welcome to PocketPay!',
                  style: headingStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              // Send Money button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SendMoneyPage(
                        recipient: '', 
                        amount: 0.0,  // Fixed the type mismatch by using a default value
                        isFavorite: false,  // Fixed the type mismatch by using a default value
                      ),
                    ),
                  );
                },
                style: buttonStyle,
                child: const Text('Go to Send Money'),
              ),
              const SizedBox(height: 20),
              // Login button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(), // Corrected to use const where applicable
                    ),
                  );
                },
                style: buttonStyle,
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
