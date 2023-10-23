import 'package:first_app/class/card_data.dart';
import 'package:first_app/core/constants.dart';
import 'package:first_app/pages/description_page.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.imagePath, required this.data});

  final String imagePath;
  final CardData data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return DescriptionPage(data: data, imagePath: imagePath);
          },
        ));
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(gap10),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: gap10),
              Image.asset(imagePath),
              const SizedBox(height: gap10),
              Text(data.title, style: h1),
              Text(data.description, style: p)
            ],
          ),
        ),
      ),
    );
  }
}
