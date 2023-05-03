import 'package:flutter/material.dart';
import 'package:covid_app/provider/data.dart';
import 'package:covid_app/screen/provinsi_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (context) => Data(), child: const ProvinsiScreen()),
    );
  }
}
