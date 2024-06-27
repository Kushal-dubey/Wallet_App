import 'package:flutter/material.dart';

class RecurringPaymentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recurring Payments', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Recurring Payments Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
