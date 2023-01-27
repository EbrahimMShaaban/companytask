import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Setting Screen',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
