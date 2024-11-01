import 'package:flutter/material.dart';
import 'package:fortify_cards/card_collection/view/card_collection_page.dart';

import 'package:fortify_cards/l10n/l10n.dart';
import 'package:nes_ui/nes_ui.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: flutterNesTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CardCollectionPage(),
    );
  }
}
