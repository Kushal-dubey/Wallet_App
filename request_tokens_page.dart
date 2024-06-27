import 'package:flutter/material.dart';

class RequestTokensPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request Tokens'),
      ),
      body: Center(
        child: Text('Request Tokens Page Content',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
      ),
    );
  }
}
