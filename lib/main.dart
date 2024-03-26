import 'package:flutter/material.dart';

import 'app.dart';
import 'services/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const WeatherApp());
}

