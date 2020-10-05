import 'package:app_courier/features/main/bloc/project_cubit.dart';
import 'package:app_courier/features/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCourier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProjectCubit()..openProject()),
      ],
      child: MaterialApp(
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
        theme: theme,
      ),
    );
  }

  ThemeData get theme {
    final theme = ThemeData.from(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.blue,
        primaryVariant: Colors.blueAccent,
        onPrimary: Colors.white,
        secondary: Colors.blue,
        secondaryVariant: Colors.blueAccent,
        onSecondary: Colors.white,
        // real values
        background: Color(0xFF0B0220),
        onBackground: Color(0xFF7B7686),
        surface: Color(0xFF544E63),
        onSurface: Colors.white,
        error: Colors.red,
        onError: Colors.white,
      ),
      textTheme: Typography.whiteMountainView,
    );

    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        subtitle1: theme.textTheme.subtitle1.copyWith(
          fontSize: 14,
        ),
      ),
    );
  }
}
