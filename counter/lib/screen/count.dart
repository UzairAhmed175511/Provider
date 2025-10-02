import 'dart:async';

import 'package:counter/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class count extends StatefulWidget {
  const count({super.key});

  @override
  State<count> createState() => _countState();
}

class _countState extends State<count> {
  // @override
  // void initState() {
  //   super.initState();
  //   final countprovider = Provider.of<countProvider>(context, listen: false);
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     countprovider.increment();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print("Welcome");
    final countprovider = Provider.of<countProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text('Count Screen')),
      body: Center(
        child: Consumer<countProvider>(
          builder: (context, value, child) {
            return Text(
              value.count.toString(),
              style: const TextStyle(fontSize: 50),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countprovider.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
