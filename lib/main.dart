import 'package:flutter/material.dart';
import 'package:flutterweb_templates/apple_landing_page/pages/accesories_detail_page.dart';
import 'package:flutterweb_templates/apple_landing_page/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AccesoriesDetailPage(),
    );
  }
}
