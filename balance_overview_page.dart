import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://localhost:3000';

  Future<Map<String, dynamic>> createWallet(String userId, int balance) async {
    final response = await http.post(
      Uri.parse('$baseUrl/create-wallet'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"userId": userId, "balance": balance}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to create wallet');
    }
  }

  Future<Map<String, dynamic>> transferBalance(String fromUserId, String toUserId, int amount) async {
    final response = await http.post(
      Uri.parse('$baseUrl/transfer-balance'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"fromUserId": fromUserId, "toUserId": toUserId, "amount": amount}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to transfer balance');
    }
  }

  Future<Map<String, dynamic>> retrieveBalance(String userId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/balance/$userId'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to retrieve balance');
    }
  }

  Future<Map<String, dynamic>> airdropRequest(String userId, int amount) async {
    final response = await http.post(
      Uri.parse('$baseUrl/airdrop'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"userId": userId, "amount": amount}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to request airdrop');
    }
  }
}
