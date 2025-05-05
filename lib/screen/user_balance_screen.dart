// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class UserBalanceScreen extends StatelessWidget {
  final String name;
  final double balance;

  const UserBalanceScreen({
    super.key,
    required this.name,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Your Balance',
            style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          body: Center(
            child: Card(
              elevation: 4,
              shadowColor: Colors.grey[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              margin: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Name: $name',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Text('Balance: \$${balance.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

                    const SizedBox(height: 24),
                    SizedBox(
                      height: 50,
                      width: 360,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.all(16),
                        ),
                        onPressed: () {
                          print('$name your balance is $balance');
                        },
                        child: const Text('Send Money',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}
