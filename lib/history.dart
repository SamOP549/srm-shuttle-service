import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Icon(
          Icons.history,
          size: 200,
          color: Colors.grey[700],
        )
      ),
    );
  }
}