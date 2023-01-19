import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:qmart/pages/login_page.dart';

import 'Animation/FadeAnimation.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseDatabase.instance.ref().child('name').set('Anjana');
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
