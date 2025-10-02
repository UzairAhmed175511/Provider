import 'package:flutter/material.dart';
import 'package:login_with_rest_api/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authprovider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Login screen")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(hintText: "Email"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () => authprovider.login(
                emailcontroller.text.toString(),
                passwordcontroller.text.toString(),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: authprovider.Loading
                    ? Center(child: CircularProgressIndicator())
                    : Center(child: Text("Login")),
                height: 50,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
