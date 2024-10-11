import 'package:card_repository/src/models/card_model.dart';
import 'package:flutter/material.dart' hide Card;

final playerCards = [
  const FortifyCard(
    category: Category.pass,
    borderColor: Colors.blue,
    title: 'Hip Pin Pass',
    description: 'List Steps',
    imageUrl: '',
  ),
  const FortifyCard(
    category: Category.submission,
    borderColor: Colors.red,
    title: 'Kimura',
    description: 'List Steps',
    imageUrl: '',
  )
];

/// {@template card_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class CardRepository {
  /// {@macro card_repository}
  const CardRepository();

  List<FortifyCard> getCards() {
    return playerCards;
  }
}

abstract class CardRepositoryException implements Exception {
  const CardRepositoryException(this.error);

  final Object error;
}

class GetCardsFailure extends CardRepositoryException {
  const GetCardsFailure(super.error);
}
