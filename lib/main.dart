import 'package:flutter/material.dart';

import 'components/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: const Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF253341)
      ),
      // theme: ThemeData(
      //   primarySwatch: Colors.amber,
      //   iconTheme: IconThemeData(color: Colors.amber),
      // ),
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        extendBodyBehindAppBar: true,
        body: getBody(),
      ),
    );
  }
}
