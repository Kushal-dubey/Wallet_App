import 'package:flutter/material.dart';

class InviteFriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite Friends'),
      ),
      body: Center(
        child: Text('Invite Friends Page Content',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
      ),
    );
  }
}
