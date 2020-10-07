import 'package:flutter/material.dart';

import 'side_bar.dart';
import 'top_bar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            TopBar(),
            Divider(
              height: 1,
              color: Theme.of(context).colorScheme.surface,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: SideBar(),
                  ),
                  VerticalDivider(
                    width: 1,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  const Expanded(
                    child: Center(
                      child: Icon(
                        Icons.local_shipping,
                        size: 128,
                        color: Colors.white10,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
