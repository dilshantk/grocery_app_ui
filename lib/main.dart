import 'package:e8assignment/homepage.dart';
import 'package:e8assignment/item_description.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home:HomePage() ,
    theme: ThemeData(primarySwatch: Colors.green),);
  }
}
