import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qmart/quarry-app/quarry_home.dart';
import 'package:qmart/quarry-app/register_page1.dart';
import 'package:qmart/user-app/home_page.dart';

import 'user-app/user_registor_page.dart';
import 'widgets/account_switch.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var nameController;

  var passwordController;

  bool isSeller = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade900,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: Center(
          child: loginCard(),
        ),
      ),
    );
  }

  Widget loginCard() {
    return SizedBox(
      height: 650.0,
      child: Card(
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Image.asset(
              'assets/qmart.png',
              width: 200,
            ),
            const Text(
              'Log in',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Get.to(
                        () => isSeller ? QuarryHomePage() : const HomePage());
                  },
                )),
            const SizedBox(
              height: 10.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Does not have account?'),
              TextButton(
                child: const Text(
                  'Register',
                ),
                onPressed: () {
                  Get.to(isSeller
                      ? QuarryRegistrationPage1()
                      : UserRegisterPage());
                },
              ),
            ]),
            const Divider(),
            AccountSwitchWidget(
              onAccountTypeChanged: (bool) {
                setState(() {
                  isSeller = bool;
                });
              },
            ),
          ]),
        ),
      ),
    );
  }
}
