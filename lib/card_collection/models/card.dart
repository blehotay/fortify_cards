import 'dart:ui';

class Card {
  const Card({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.borderColor,
  });
  final String title;
  final String description;
  final String imageUrl;
  final Color borderColor;
}
