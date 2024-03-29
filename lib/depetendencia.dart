import 'package:flutter/material.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';

class Dependencias extends StatefulWidget {
  const Dependencias({super.key});

  @override
  State<Dependencias> createState() => _DependenciasState();
}

class _DependenciasState extends State<Dependencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EmojiFeedback(
                onChanged: (value) {
                  print(value);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
