import 'package:flutter/material.dart';
import 'package:okuldaki_odevin_evdesi/view/home_page.dart';
import 'package:okuldaki_odevin_evdesi/view_model/homepage_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomepageView()),
      ],
      child: const MyApp(),
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: const HomePage(),
    );
  }
}
