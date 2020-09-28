import 'package:app_courier/features/choose_project/choose_project_screen.dart';
import 'package:flutter/material.dart';

class AppCourier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChooseProjectScreen(),
      theme: theme,
    );
  }

  ThemeData get theme {
    return ThemeData.dark();
  }
}
