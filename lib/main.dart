import 'package:flutter/material.dart';
import 'package:movies_db/models/movies_models.dart';
import 'package:movies_db/pages/details_page.dart';
import 'package:movies_db/pages/home_page.dart';
import 'package:movies_db/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Movies',
      theme: ThemeData.dark(),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => Welcome(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
