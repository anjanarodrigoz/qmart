import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qmart/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var nameController;

  var passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
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
      height: 600.0,
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
              height: 20.0,
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
                    Get.to(() => const HomePage());
                  },
                )),
            const SizedBox(
              height: 20.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Does not have account?'),
              TextButton(
                child: const Text(
                  'Register',
                ),
                onPressed: () {
                  //signup screen
                },
              ),
            ]),
          ]),
        ),
      ),
    );
  }

  void register() {
    // ToggleSwitch(
    //         initialLabelIndex: 0,
    //         totalSwitches: 2,
    //         labels: const ['Buyer', 'Seller'],
    //         onToggle: (index) {},
    //       ),
  }
}
