import 'package:first_app/class/card_data.dart';
import 'package:flutter/material.dart';
import '../core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage(
      {super.key, required this.data, required this.imagePath});
  final String imagePath;
  final CardData data;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    double fSize = 26.0;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.data.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(gap20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(widget.imagePath),
                ),
                Wrap(spacing: gap10, runSpacing: gap10, children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          fSize = 14.0;
                        });
                      },
                      child: const Text("Small Title")),
                  ElevatedButton(
                      onPressed: () {
                        fSize = 24.0;
                      },
                      child: const Text("Medium Title")),
                  OutlinedButton(
                      onPressed: () {
                        fSize = 32.0;
                      },
                      child: const Text("Large Title")),
                  FilledButton(
                      onPressed: () {
                        setState(() {
                          fSize = 200.0;
                        });
                      },
                      child: const Text("Huge Title")),
                ]),
                Text(widget.data.title,
                    style: TextStyle(
                        fontSize: fSize, fontWeight: FontWeight.bold)),
                const Text(
                  demoDescription,
                  style: p,
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ));
  }
}
