import 'package:flutter/material.dart';

import 'widgets/android_content.dart';
import 'widgets/languages_sidebar.dart';
import 'widgets/project_bar.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProjectBar(),
          Expanded(
            child: Row(
              children: [
                LanguagesSidebar(),
                Expanded(
                  child: AndroidContent(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
