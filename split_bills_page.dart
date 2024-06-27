import 'package:flutter/material.dart';

class SplitBillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Split Bills', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Text(
          'Split Bills Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
