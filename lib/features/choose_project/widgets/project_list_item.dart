import 'package:flutter/material.dart';

class ProjectListItem extends StatelessWidget {
  const ProjectListItem({
    Key key,
    @required this.path,
    this.title,
  }) : super(key: key);

  final String path;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.01),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(color: Colors.white10),
          child: Row(
            children: [
              const Icon(Icons.folder),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title != null)
                      Text(title)
                    else
                      Text(
                        'No title yet',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    const SizedBox(height: 4),
                    Text(
                      path,
                      style: TextStyle(color: Colors.white60),
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
