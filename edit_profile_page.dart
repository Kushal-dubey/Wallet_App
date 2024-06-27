import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // Text editing controllers for each field
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  // Profile image
  String _profileImage = 'assets/images/profile_image.jpeg'; // Placeholder image path

  @override
  void dispose() {
    // Clean up controllers
    _nameController.dispose();
    _emailController.dispose();
    _contactController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(_profileImage),
            ),
            SizedBox(height: 20),
            _buildTextField('Name', Icons.person, _nameController),
            SizedBox(height: 20),
            _buildTextField('Email', Icons.email, _emailController),
            SizedBox(height: 20),
            _buildTextField('Contact Number', Icons.phone, _contactController),
            SizedBox(height: 20),
            _buildTextField('Address', Icons.location_on, _addressController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Validation logic before proceeding
                if (_nameController.text.isEmpty ||
                    _emailController.text.isEmpty ||
                    _contactController.text.isEmpty ||
                    _addressController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please  enter  all details.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  // Proceed with saving changes
                  // For demo, just navigate back
                  Navigator.pop(context); // Go back to ProfilePage
                }
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, IconData icon, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(),
      ),
    );
  }
}
