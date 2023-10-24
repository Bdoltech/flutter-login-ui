import 'package:flutter/material.dart';

class AccountCreationPage extends StatefulWidget {
  @override
  _AccountCreationPageState createState() => _AccountCreationPageState();
}

class _AccountCreationPageState extends State<AccountCreationPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _createAccount() {
    // Get user input from the controllers
    String email = _emailController.text;
    String password = _passwordController.text;

    // Implement your account creation logic here
    // For example, you might call an API, save data to a database, etc.

    // Show a message to the user
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Account created successfully with Email: $email'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Account"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _createAccount,
                child: Text("Create Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
