import 'package:flutter/material.dart';

class LoyaltyRewardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loyalty Rewards'),
      ),
      body: Center(
        child: Text('Loyalty Rewards Page Content',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
      ),
    );
  }
}
