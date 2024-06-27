import 'package:flutter/material.dart';
import 'api_service.dart';

class CreateWalletPage extends StatefulWidget {
  @override
  _CreateWalletPageState createState() => _CreateWalletPageState();
}

class _CreateWalletPageState extends State<CreateWalletPage> {
  final _userIdController = TextEditingController();
  final _balanceController = TextEditingController();
  final ApiService _apiService = ApiService();

  Future<void> _createWallet() async {
    try {
      final userId = _userIdController.text;
      final balance = int.parse(_balanceController.text);
      final response = await _apiService.createWallet(userId, balance);
      print('Wallet Created: $response');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Wallet Created Successfully')));
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to create wallet')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Wallet'),
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
              controller: _balanceController,
              decoration: InputDecoration(labelText: 'Initial Balance'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _createWallet,
              child: Text('Create Wallet'),
            ),
          ],
        ),
      ),
    );
  }
}
