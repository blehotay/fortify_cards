import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:fortify_cards/card_collection/widgets/card_view_back.dart';
import 'package:fortify_cards/card_collection/widgets/card_view_front.dart';

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
      // backgroundColor: Colors.black45,
      body: const FlipCard(
        front: CardViewFront(),
        back: CardViewBack(),
      ),
    );
  }
}
