import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text(""),
              ),
              Container(),
              Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
