import 'package:flutter/material.dart';
import 'package:flutternotetaker/presentation/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
