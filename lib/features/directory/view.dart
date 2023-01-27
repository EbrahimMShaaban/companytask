import 'package:flutter/material.dart';

class Directoory extends StatelessWidget {
  const Directoory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Directory Screen',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
