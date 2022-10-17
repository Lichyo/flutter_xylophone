import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const Ball());

class Ball extends StatelessWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Ask Me Anything'),
            backgroundColor: Colors.teal.shade600,
          ),
          body: const BallPage(),
        ),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          TextButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: ()
              {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              }
          ),
        ],
      ),
    );
  }
}
