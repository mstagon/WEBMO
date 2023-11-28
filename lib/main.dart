import 'package:flutter/material.dart';
import 'package:untitled1/screen/health.dart';
import 'package:flutter/services.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
  runApp(MaterialApp(home: Health()));
}




