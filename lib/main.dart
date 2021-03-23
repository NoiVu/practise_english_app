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
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        extendBodyBehindAppBar: true,
        body: getBody(),
      ),
    );
  }
}
