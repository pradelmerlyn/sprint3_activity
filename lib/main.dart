import 'package:flutter/material.dart';
import 'package:sprint3_activity/core/dependency_injection/injection_container.dart';
import 'package:sprint3_activity/presentation/home/screens/home_screen.dart';

void main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      
    );
  }
}
