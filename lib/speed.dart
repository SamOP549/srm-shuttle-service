import 'package:flutter/material.dart';

class Speed extends StatelessWidget {
  const Speed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Icon(
          Icons.speed,
          size: 200,
          color: Colors.grey[700],
        )
      ),
    );
  }
}