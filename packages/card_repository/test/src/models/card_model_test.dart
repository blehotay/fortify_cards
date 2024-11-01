import 'package:card_repository/card_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FortifyCard', () {
    const title = 'Armbar';
    const description = 'A submission technique.';
    const imageUrl = 'http://example.com/armbar.png';
    const borderColor = Colors.red;
    const category = Category.submission;
    const startingPosition = StartingPosition.guard;

    test('supports value equality', () {
      expect(
        const FortifyCard(
          title: title,
          description: description,
          imageUrl: imageUrl,
          borderColor: borderColor,
          category: category,
          // startingPosition: startingPosition,
        ),
        const FortifyCard(
          title: title,
          description: description,
          imageUrl: imageUrl,
          borderColor: borderColor,
          category: category,
          // startingPosition: startingPosition,
        ),
      );
    });

    test('props are correct', () {
      expect(
        const FortifyCard(
          title: title,
          description: description,
          imageUrl: imageUrl,
          borderColor: borderColor,
          category: category,
          // startingPosition: startingPosition,
        ).props,
        [title, description, imageUrl, borderColor, category, startingPosition],
      );
    });

    test('copyWith returns a copy with updated values', () {
      const card = FortifyCard(
        title: title,
        description: description,
        imageUrl: imageUrl,
        borderColor: borderColor,
        category: category,
        // startingPosition: startingPosition,
      );

      final updatedCard = card.copyWith(
        title: 'Triangle Choke',
        description: 'Another submission technique.',
        imageUrl: 'http://example.com/triangle.png',
        borderColor: Colors.blue,
        category: Category.sweep,
        // startingPosition: StartingPosition.mount,
      );

      expect(updatedCard.title, 'Triangle Choke');
      expect(updatedCard.description, 'Another submission technique.');
      expect(updatedCard.imageUrl, 'http://example.com/triangle.png');
      expect(updatedCard.borderColor, Colors.blue);
      expect(updatedCard.category, Category.sweep);
      // expect(updatedCard.startingPosition, StartingPosition.mount);
    });

    test('copyWith retains the same values if no arguments are provided', () {
      const card = FortifyCard(
        title: title,
        description: description,
        imageUrl: imageUrl,
        borderColor: borderColor,
        category: category,
        // startingPosition: startingPosition,
      );

      final copiedCard = card.copyWith();

      expect(copiedCard.title, title);
      expect(copiedCard.description, description);
      expect(copiedCard.imageUrl, imageUrl);
      expect(copiedCard.borderColor, borderColor);
      expect(copiedCard.category, category);
      // expect(copiedCard.startingPosition, startingPosition);
    });
  });
}
