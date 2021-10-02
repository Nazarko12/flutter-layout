import 'package:flutter/material.dart';
import 'package:lab2/size_config.dart';

import 'pages/welcome_screen.dart';
import 'styling.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              home: WelcomeScreen(),
            );
          },
        );
      },
    );
  }
}
