import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:qmart/login_page.dart';
import 'package:qmart/quarry-app/quarry_home.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
