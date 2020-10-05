import 'package:app_courier/bloc/project_cubit.dart';
import 'package:app_courier/models/models.dart';
import 'package:app_courier/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TopBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentSection = useState('general');

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          BlocBuilder<ProjectCubit, Project>(
            builder: (context, project) => ProjectOverviewBar(
              path: project.path,
              name: project.defaultName,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 61,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                scrollDirection: Axis.horizontal,
                children: [
                  NavigationSection<String>(
                    title: const Text('section'),
                    value: currentSection.value,
                    onChanged: (section) => currentSection.value = section,
                    items: [
                      NavigationSectionItem(
                        value: 'general',
                        child: const Text('General'),
                      ),
                      NavigationSectionItem(
                        value: 'phone',
                        child: const Text('Phone'),
                      ),
                      NavigationSectionItem(
                        value: 'tablet',
                        child: const Text('Tablet'),
                      ),
                      NavigationSectionItem(
                        value: 'tv',
                        child: const Text('TV'),
                      ),
                      NavigationSectionItem(
                        value: 'wear',
                        child: const Text('Wear'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32),
                  BlocBuilder<ProjectCubit, Project>(
                    builder: (context, project) => NavigationSection<String>(
                      title: const Text('changelogs'),
                      value: currentSection.value,
                      onChanged: (section) => currentSection.value = section,
                      items: [
                        NavigationSectionItem(
                          child: const Icon(Icons.add, size: 20),
                        ),
                        for (final versionName in project.versionsNames)
                          NavigationSectionItem(
                            value: 'changelog-$versionName',
                            child: Text(versionName),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
