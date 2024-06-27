import 'package:flutter/material.dart';
import 'send_money_page.dart';
import 'receive_money_page.dart'; // Adjusted import to match the page names
import 'pay_bills_page.dart';
import 'transaction_history_page.dart';

class ExploreWalletsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Wallets', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Explore Payment Options',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            _buildCard(
              context,
              'Send Money',
              'assets/images/send_money.png', // Ensure you have an image in assets folder
              Icons.send,
              'Send money to friends and family instantly.',
              [Colors.green, Colors.lightGreen],
              SendMoneyPage(), // Navigate to SendMoneyPage on button press
            ),
            SizedBox(height: 20),
            _buildCard(
              context,
              'Receive Money',
              'assets/images/receive_money.jpeg', // Corrected image path
              Icons.account_balance_wallet,
              'Receive money directly to your wallet.',
              [Colors.blue, Colors.lightBlue],
              ReceiveMoneyPage(), // Navigate to ReceiveMoneyPage on button press
            ),
            SizedBox(height: 20),
            _buildCard(
              context,
              'Pay Bills',
              'assets/images/pay_bills.jpeg', // Ensure you have an image in assets folder
              Icons.receipt,
              'Pay your utility bills quickly and easily.',
              [Colors.orange, Colors.deepOrange],
              PayBillsPage(), // Navigate to PayBillsPage on button press
            ),
            SizedBox(height: 20),
            _buildCard(
              context,
              'Transaction History',
              'assets/images/transaction_history.jpeg', // Ensure you have an image in assets folder
              Icons.history,
              'View your past transactions in detail.',
              [Colors.purple, Colors.deepPurple],
              TransactionHistoryPage(), // Navigate to TransactionHistoryPage on button press
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, String imagePath, IconData icon, String description, List<Color> colors, Widget page) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: colors[0].withOpacity(0.5),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon, size: 40, color: Colors.white),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(imagePath, height: 150, fit: BoxFit.cover), // Ensure the asset images are available in the assets folder
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page),
                    );
                  },
                  child: Text('Learn More'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: colors[1], backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
