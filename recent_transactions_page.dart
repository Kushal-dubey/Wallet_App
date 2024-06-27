import 'package:flutter/material.dart';

class RecentTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recent Transactions'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'List of Recent Transactions Here',
              style: TextStyle(fontSize: 24),
            ),
            // Add logic to display recent transactions
          ],
        ),
      ),
    );
  }
}
