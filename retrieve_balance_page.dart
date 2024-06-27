import 'package:flutter/material.dart';
import 'api_service.dart';

class RetrieveBalancePage extends StatefulWidget {
  @override
  _RetrieveBalancePageState createState() => _RetrieveBalancePageState();
}

class _RetrieveBalancePageState extends State<RetrieveBalancePage> {
  final _userIdController = TextEditingController();
  final ApiService _apiService = ApiService();
  String _balance = '';

  Future<void> _retrieveBalance() async {
    try {
      final userId = _userIdController.text;
      final response = await _apiService.retrieveBalance(userId);
      setState(() {
        _balance = response['balance'].toString();
      });
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to retrieve balance')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Balance'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _userIdController,
              decoration: InputDecoration(labelText: 'User ID'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _retrieveBalance,
              child: Text('Retrieve Balance'),
            ),
            SizedBox(height: 20),
            if (_balance.isNotEmpty) ...[
              Text('Balance: $_balance'),
            ],
          ],
        ),
      ),
    );
  }
}
