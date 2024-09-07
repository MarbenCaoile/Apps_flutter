import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: DiceApp(),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int pic = 3;

  void function() {
    final Random rand = Random();
    setState(() {
      pic = rand.nextInt(5) + 1; // Generates a number between 1 and 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 73, 131, 11),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center column content vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center column content horizontally
            children: [
              TextButton(
                onPressed: function,
                child: Image.asset("images/p$pic.png"),
              ),
              SizedBox(height: 20), // Add spacing between the dice image and the text
              Text(
                'HELLO THERE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24, // Adjust font size if needed
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
