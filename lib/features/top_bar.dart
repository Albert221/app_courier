import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'navigation_section.dart';
import 'project_overview_bar.dart';

class TopBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentPlatform = useState('android');
    final currentSection = useState('general');

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          const ProjectOverviewBar(),
          Expanded(
            child: SizedBox(
              height: 61,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                scrollDirection: Axis.horizontal,
                children: [
                  NavigationSection<String>(
                    title: const Text('platform'),
                    value: currentPlatform.value,
                    onChanged: (platform) => currentPlatform.value = platform,
                    items: [
                      NavigationSectionItem(
                        value: 'android',
                        child: const Text('Android'),
                      ),
                      NavigationSectionItem(
                        value: 'ios',
                        child: const Text('iOS'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32),
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
                  NavigationSection<String>(
                    title: const Text('changelogs'),
                    value: currentSection.value,
                    onChanged: (section) => currentSection.value = section,
                    items: [
                      NavigationSectionItem(
                        child: const Icon(Icons.add, size: 20),
                      ),
                      ...List.generate(
                        28,
                        (index) => NavigationSectionItem(
                          value: index.toString(),
                          child: Text(index.toString()),
                        ),
                      ).reversed,
                    ],
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
