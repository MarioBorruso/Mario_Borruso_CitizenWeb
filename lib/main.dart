import 'package:flutter/material.dart';
import 'login/login_page.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CitizenWeb',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage()
      }
  ));
}

//eve.holt@reqres.in
