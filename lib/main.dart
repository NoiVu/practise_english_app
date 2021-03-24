import 'package:flutter/material.dart';
import 'package:practise_english_app/blocs/theme.dart';
import 'package:practise_english_app/components/body.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: MaterialAppTheme(),
    );
  }
}

class MaterialAppTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: getBody(),
      ),
      theme: theme.getThemeData(),

    );
  }
}