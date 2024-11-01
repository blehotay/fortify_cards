import 'package:app_ui/app_ui.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class ExpandedCardView extends StatelessWidget {
  const ExpandedCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: const FlipCard(
        front: CardViewFront(),
        back: CardViewBack(),
      ),
    );
  }
}
