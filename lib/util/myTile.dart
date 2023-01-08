import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: tileColor,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 80,
      ),
    );
  }
}
