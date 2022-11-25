import 'package:flutter/material.dart';
import 'package:qrreader/pages/home_page.dart';
import 'package:qrreader/pages/mapa_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Reader',
      initialRoute: 'home',
      routes: {'home': (_) => HomePage(), 'mapa': (_) => MapaPage()},
    );
  }
}
