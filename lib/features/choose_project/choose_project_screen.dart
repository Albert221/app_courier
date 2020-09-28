import 'package:flutter/material.dart';

import 'widgets/logo.dart';

class ChooseProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Center(
              child: Logo(),
            ),
          ),
          Expanded(
            child: Column(),
          ),
        ],
      ),
    );
  }
}
