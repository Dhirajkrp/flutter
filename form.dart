import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 16.0),
      child: Column(children: const [
         TextField(
          maxLength: 16,
          decoration: InputDecoration(
            prefix:   Text("Mca 2:"),
            suffix: Text("best wishes"),
            border: OutlineInputBorder(),
            hintText: 'Enter a  text with max length 12',

          ),
         )
      ],),
    );
  }
}