import 'package:flutter/material.dart';

class AnimationContainer extends StatefulWidget {
  const AnimationContainer({super.key});

  @override
  State<AnimationContainer> createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> {

  double _height = 100.0;
  double _width = 100.0;

  void _increaseWidth(){
    setState((){

      _width = _width >= 320.0 ? 100.0 : _width +=50.0;
      _height = _height >= 400.0 ? 100.0 : _height +=75.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.elasticInOut,
            color: Colors.amber,
            height: _height,
            width: _width,
            child: ElevatedButton(onPressed: (() {
              _increaseWidth(); 
            })
            , child: const Text("Tap to grow width")),
            
          )
        ],
      ),
    );
  }
}