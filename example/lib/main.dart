import 'package:flutter/material.dart';
import 'package:hero_player/hero_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hero Player'),
        ),
        body: Column(
          children: const [
            Center(
              child: HeroPlayer(
                idPlayer: '2PJdQGa1f8GqPGYem50XHr9qVf8',
                publicKey: 'K8IS91R64HUMD85634D7QEJ8S5BUN7OM',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
