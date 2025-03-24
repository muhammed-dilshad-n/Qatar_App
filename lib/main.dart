import 'package:flutter/material.dart';
import 'package:qatar_application/features/home/view/pages/home_page.dart';

void main() {
  runApp(QatarApp());
}

class QatarApp extends StatelessWidget {
  const QatarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
