import 'package:first_app/widgets/card_widget.dart';
import "package:flutter/material.dart";
import '../class/card_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My first page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardWidget(
                imagePath: "images/spaceship.png",
                data: CardData(title: "Hero Card", description: "Welcome"),
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      imagePath: "images/rocket.png",
                      data: CardData(
                          title: "Card 1", description: "This is Card 1"),
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      imagePath: "images/rocket.png",
                      data: CardData(
                          title: "Card 2", description: "This is Card 2"),
                    ),
                  ),
                ],
              ),
              CardWidget(
                imagePath: "images/spaceship.png",
                data: CardData(
                    title: "Footer", description: "This is Footer Card"),
              )
            ],
          ),
        ));
  }
}
