import 'package:flutter/material.dart';
import 'api_service.dart';

class TransferBalancePage extends StatefulWidget {
  @override
  _TransferBalancePageState createState() => _TransferBalancePageState();
}

class _TransferBalancePageState extends State<TransferBalancePage> {
  final _fromUserIdController = TextEditingController();
  final _toUserIdController = TextEditingController();
  final _amountController = TextEditingController();
  final ApiService _apiService = ApiService();

  Future<void> _transferBalance() async {
    try {
      final fromUserId = _fromUserIdController.text;
      final toUserId = _toUserIdController.text;
      final amount = int.parse(_amountController.text);
      final response = await _apiService.transferBalance(fromUserId, toUserId, amount);
      print('Balance Transferred: $response');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Balance Transferred Successfully')));
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to transfer balance')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer Balance'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _fromUserIdController,
              decoration: InputDecoration(labelText: 'From User ID'),
            ),
            TextField(
              controller: _toUserIdController,
              decoration: InputDecoration(labelText: 'To User ID'),
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _transferBalance,
              child: Text('Transfer Balance'),
            ),
          ],
        ),
      ),
    );
  }
}
