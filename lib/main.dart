import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:top_up_app/src/src.dart';

void main() {
  registerGetItServices();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
