import 'package:flutter/material.dart';

class SavedContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Contacts', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          'Saved Contacts Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
