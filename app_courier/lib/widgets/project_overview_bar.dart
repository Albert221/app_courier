import 'package:flutter/material.dart';

class ProjectOverviewBar extends StatelessWidget {
  const ProjectOverviewBar({
    Key key,
    @required this.path,
    this.name,
    this.onTap,
  }) : super(key: key);

  final String path;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Material(
        color: Colors.white10,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? '',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      path,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Icon(
                  Icons.expand_more,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
