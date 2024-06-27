
import 'package:flutter/material.dart';
import 'api_service.dart';

class AirdropRequestPage extends StatefulWidget {
  @override
  _AirdropRequestPageState createState() => _AirdropRequestPageState();
}

class _AirdropRequestPageState extends State<AirdropRequestPage> {
  final _userIdController = TextEditingController();
  final _amountController = TextEditingController();
  final ApiService _apiService = ApiService();

  Future<void> _airdropRequest() async {
    try {
      final userId = _userIdController.text;
      final amount = int.parse(_amountController.text);
      final response = await _apiService.airdropRequest(userId, amount);
      print('Airdrop Requested: $response');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Airdrop Requested Successfully')));
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to request airdrop')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airdrop Request'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _userIdController,
              decoration: InputDecoration(labelText: 'User ID'),
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _airdropRequest,
              child: Text('Request Airdrop'),
            ),
          ],
        ),
      ),
    );
  }
}
