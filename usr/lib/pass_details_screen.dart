import 'package:flutter/material.dart';

class PassDetailsScreen extends StatelessWidget {
  final String name;
  final String phone;
  final String address;
  final DateTime date;

  const PassDetailsScreen({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Pass Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'E-Pass Booked Successfully!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text('Name: $name', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Contact Number: $phone', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Address: $address', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Date: ${date.toLocal()}'.split(' ')[0], style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
