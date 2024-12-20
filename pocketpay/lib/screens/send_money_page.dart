import 'package:flutter/material.dart';

class SendMoneyPage extends StatelessWidget {
  // If these fields are unused, consider removing them or using them in your code
  final String _recipient;  // Mark as final if it’s intended to be used
  final double _amount;  // Same for this one
  final bool _isFavorite; // Use final if it’s not going to change

  // Constructor with 'key' parameter
  const SendMoneyPage({super.key, required String recipient, required double amount, required bool isFavorite})
      : _recipient = recipient,
        _amount = amount,
        _isFavorite = isFavorite;  // Added the key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Send Money")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Example usage of fields if needed
            Text('Recipient: $_recipient'),
            Text('Amount: $_amount'),
            Text('Favorite: $_isFavorite'),

            // Example of using 'const' for widgets to improve performance
            const SizedBox(height: 20),
            const ElevatedButton(
              onPressed: null,  // Just an example; replace with real action
              child: Text('Send'),
            ),
            const Divider(),
            // Additional code for your UI...
          ],
        ),
      ),
    );
  }
}
