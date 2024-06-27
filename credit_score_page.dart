import 'package:flutter/material.dart';

class CreditScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Score'),
      ),
      body: Center(
        child: Text('Credit Score Page Content',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
      ),
    );
  }
}
