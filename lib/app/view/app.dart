import 'package:flutter/material.dart';
import 'package:fortify_cards/card_collection/view/card_collection_page.dart';
import 'package:fortify_cards/counter/counter.dart';
import 'package:fortify_cards/home/home.dart';
import 'package:fortify_cards/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.blueAccent,
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CollectionPage(),
    );
  }
}
