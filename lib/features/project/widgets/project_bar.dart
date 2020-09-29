import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProjectBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);

    return Material(
      color: Colors.white.withOpacity(0.05),
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fast Shopping',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'E:/AndroidStudioProjects/FastShopping',
                  style: const TextStyle(color: Colors.white60),
                ),
              ],
            ),
            const Spacer(),
            TabBar(
              controller: tabController,
              isScrollable: true,
              labelPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              tabs: [
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.android),
                      SizedBox(width: 8),
                      Text('Android'),
                    ],
                  ),
                ),
                Tab(text: 'iOS'),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.cloud_download),
              tooltip: 'Sync from Google Play',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.folder),
              tooltip: 'Open in explorer',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
