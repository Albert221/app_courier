import 'package:flutter/material.dart';

class OpenProjectListItem extends StatelessWidget {
  const OpenProjectListItem({Key key, this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.01),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(color: Colors.white10),
          child: Row(
            children: [
              const Icon(Icons.create_new_folder),
              const SizedBox(width: 24),
              Expanded(
                child: Text('Open a new project'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
