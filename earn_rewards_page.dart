import 'package:flutter/material.dart';

class EarnRewardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Earn Rewards'),
      ),
      body: Center(
        child: Text('Earn Rewards Page Content',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
      ),
    );
  }
}
