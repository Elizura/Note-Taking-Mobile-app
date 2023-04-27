import 'package:flutter/material.dart';
import 'package:flutternotetaker/presentation/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
