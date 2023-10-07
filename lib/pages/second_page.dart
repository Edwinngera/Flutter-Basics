import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("I am in the second page"),),

      body: Center(
        child: Text("Hello world"),
      ),
    );
  }
}
