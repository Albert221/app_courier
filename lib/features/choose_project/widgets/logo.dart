import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'App Courier',
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(height: 16),
        Text(
          'Your supply and deliver metadata explorer.',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
