
import 'package:animation_demo/forms/form.dart';
import 'package:flutter/material.dart';
class MyFormContainer extends StatelessWidget {
  const MyFormContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( "My Form Page"),
      ),
      body: const MyForm(),
    );
  }
}