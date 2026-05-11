import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('es'), // Español
        Locale('en'), // Inglés
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Builder(
            builder: (context) => Text(AppLocalizations.of(context)!.appTitle),
          ),
        ),
        body: Center(
          child: Builder(
            builder: (context) => Text(AppLocalizations.of(context)!.welcomeMessage),
          ),
        ),
      ),
    );
  }
}