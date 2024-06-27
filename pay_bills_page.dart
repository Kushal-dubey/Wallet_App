import 'package:flutter/material.dart';

class PayBillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pay Bills', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Pay Bills Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
