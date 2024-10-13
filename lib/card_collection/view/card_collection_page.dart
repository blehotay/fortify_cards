import 'package:card_repository/card_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortify_cards/card_collection/bloc/card_collection_bloc.dart';
import 'package:fortify_cards/card_collection/view/card_collection_view.dart';

class CardCollectionPage extends StatelessWidget {
  const CardCollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CardCollectionBloc(
        cardRepository: context.read<CardRepository>(),
      )..add(const CardColectionRequested()),
      child: const CardCollectionSuccess(),
    );
  }
}
