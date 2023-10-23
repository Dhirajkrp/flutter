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
  double fSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.data.title),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.dangerous_outlined)),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Hello from snackbar")),
                  );
                },
                icon: const Icon(Icons.info)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(gap10),
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
                        setState(() {
                          fSize = 28.0;
                        });
                      },
                      child: const Text("Medium Title")),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          fSize = 40.0;
                        });
                      },
                      child: const Text("Large Title")),
                  FilledButton(
                      onPressed: () {
                        setState(() {
                          fSize = 80.0;
                        });
                      },
                      child: const Text("Huge Title")),
                ]),
                const SizedBox(
                  height: gap20,
                ),
                FittedBox(
                  child: Text(widget.data.title,
                      style: TextStyle(
                          fontSize: fSize, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: gap20,
                ),
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
