// import 'dart:ui';

// import 'package:equatable/equatable.dart';

// enum Category {
//   sweep,
//   pass,
//   submission,
//   takedown,
// }

// enum startingPosition {
//   standing,
//   mount,
//   sideControl,
//   halfGuard,
//   guard,
//   quarterQuard,
//   singleLegX
// }

// class FortifyCard extends Equatable {
//   const FortifyCard({
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//     required this.borderColor,
//     required this.category,
//   });
//   final String title;
//   final String description;
//   final String imageUrl;
//   final Color borderColor;
//   final Category category;

//   FortifyCard copyWith({
//     String? title,
//     String? description,
//     String? imageUrl,
//     Color? borderColor,
//   }) {
//     return FortifyCard(
//       title: title ?? this.title,
//       description: description ?? this.description,
//       imageUrl: imageUrl ?? this.imageUrl,
//       borderColor: borderColor ?? this.borderColor,
//       category: category,
//     );
//   }

//   @override
//   List<Object?> get props =>
//       [title, description, imageUrl, borderColor, category];
// }
