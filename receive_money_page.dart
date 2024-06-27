import 'package:flutter/material.dart';

class ReceiveMoneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recieve Money', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Recieve Money Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
