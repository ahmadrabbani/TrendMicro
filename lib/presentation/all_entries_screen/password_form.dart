import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  final Function(String, String, String) onSaved;

  MyForm({required this.onSaved});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController _websiteController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: _websiteController,
          decoration: InputDecoration(labelText: 'Website'),
        ),
        TextField(
          controller: _usernameController,
          decoration: InputDecoration(labelText: 'Username'),
        ),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(labelText: 'Password'),
        ),
        ElevatedButton(
          onPressed: () {
            final website = _websiteController.text;
            final username = _usernameController.text;
            final password = _passwordController.text;

            // Pass the collected data to the parent widget
            widget.onSaved(website, username, password);

            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
