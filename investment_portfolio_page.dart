import 'package:flutter/material.dart';

class InvestmentPortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investment Portfolio'),
      ),
      body: Center(
        child: Text('Investment Portfolio Page Content',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
      ),
    );
  }
}
