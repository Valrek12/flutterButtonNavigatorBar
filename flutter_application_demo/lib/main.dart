import 'package:flutter/material.dart';
import 'package:flutter_application_demo/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const appBarColor = Colors.orange;
  static const appName = 'Hello World!';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        const Locale('ru'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: appBarColor),
          backgroundColor: Colors.white),
      home: new HomePage(),
    );
  }
}
