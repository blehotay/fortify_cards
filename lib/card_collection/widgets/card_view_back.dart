import 'package:flutter/material.dart';

class CardViewBack extends StatelessWidget {
  const CardViewBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.black,
      child: Center(
        child: Text(
          'Back',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
