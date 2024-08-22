import 'package:flutter/material.dart';
import 'package:top_up_app/src/src.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TopUp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, onPrimary: Colors.white),
        useMaterial3: true,
      ),
      routerConfig: goRouterConfig(),
    );
  }
}
