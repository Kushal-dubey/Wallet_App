import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = 'http://your-server-address:3000';

  static Future<bool> transferMoney(String accountNumber, double amount) async {
    final url = Uri.parse('$baseUrl/transfer');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'accountNumber': accountNumber,
        'amount': amount,
      }),
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      return responseBody['success'];
    } else {
      return false;
    }
  }

  createWallet(String userId, int balance) {}

  airdropRequest(String userId, int amount) {}

  retrieveBalance(String userId) {}

  transferBalance(String fromUserId, String toUserId, int amount) {}
}
