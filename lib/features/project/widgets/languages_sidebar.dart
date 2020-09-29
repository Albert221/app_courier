import 'package:flutter/material.dart';

class LanguagesSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: const UnderlineInputBorder(
                borderRadius: BorderRadius.zero,
              ),
              filled: true,
              isDense: true,
              prefixIcon: const Icon(Icons.search),
              labelText: 'Search languages (3)',
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.language),
                  title: Text('English (US)'),
                  subtitle: Text('en-US'),
                  selected: true,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.language),
                  title: Text('Polish'),
                  subtitle: Text('pl-PL'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.language),
                  title: Text('Macedonian'),
                  subtitle: Text('mk-MK'),
                ),
              ],
            ),
          ),
          Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.add),
            title: Text('Add language'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
