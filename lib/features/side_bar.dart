import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'language_list_tile.dart';

class SideBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentLanguage = useState(0);

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(16),
              isDense: true,
              prefixIcon: Icon(Icons.search),
              hintText: 'Search...',
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              LanguageListTile(
                language: const Text('English (United States)'),
                code: const Text('en_US'),
                selected: currentLanguage.value == 0,
                onTap: () => currentLanguage.value = 0,
              ),
              LanguageListTile(
                language: const Text('Macedonian'),
                code: const Text('mk_MK'),
                selected: currentLanguage.value == 1,
                onTap: () => currentLanguage.value = 1,
              ),
              LanguageListTile(
                language: const Text('Polish'),
                code: const Text('pl_PL'),
                selected: currentLanguage.value == 2,
                onTap: () => currentLanguage.value = 2,
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Theme.of(context).colorScheme.surface,
        ),
        Material(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.add_box),
                    label: const Text('Add language'),
                    onPressed: () {},
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
