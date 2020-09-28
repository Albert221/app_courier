import 'package:file_chooser/file_chooser.dart';
import 'package:flutter/material.dart';

import 'widgets/logo.dart';
import 'widgets/open_project_list_item.dart';
import 'widgets/project_list_item.dart';

class ChooseProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final wideEnough = constraints.maxWidth > 800;

        return Scaffold(
          body: Flex(
            direction: wideEnough ? Axis.horizontal : Axis.vertical,
            children: [
              if (wideEnough)
                Expanded(child: Logo())
              else
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                  child: Logo(),
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OpenProjectListItem(
                        onTap: () async {
                          try {
                            final result = await showOpenPanel(
                              canSelectDirectories: true,
                            );

                            print(result.paths);
                          } catch (_) {}
                        },
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Recently opened projects',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      const SizedBox(height: 16),
                      const ProjectListItem(
                        title: 'Fast Shopping',
                        path: 'E:/AndroidStudioProjects/FastShopping',
                      ),
                      const SizedBox(height: 16),
                      const ProjectListItem(
                        path: 'E:/AndroidStudioProjects/test_flutter',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
