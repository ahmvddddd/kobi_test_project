import 'package:flutter/material.dart';

import 'screen/user_balance_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const UserBalanceScreen(name: 'Ahmad', balance: 2000),
    );
  }
}
