import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutternotetaker/presentation/pages/sign_in/sign_in_page.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Note taker',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Placeholder());
  }
}
