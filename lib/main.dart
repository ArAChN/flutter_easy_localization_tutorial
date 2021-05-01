import 'package:flutter/material.dart';
import 'package:flutter_easy_localization/src/navigation/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Easy Localization Tutorial',
      onGenerateRoute: Routes.routes,
    );
  }
}
