import 'package:flutter/material.dart';

class LanguageListTile extends StatelessWidget {
  const LanguageListTile({
    Key key,
    @required this.language,
    @required this.code,
    this.selected = false,
    this.onTap,
  }) : super(key: key);

  final Widget language;
  final Widget code;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? Colors.white10 : Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: DefaultTextStyle.merge(
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  child: language,
                ),
              ),
              const SizedBox(width: 16),
              DefaultTextStyle.merge(
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                child: code,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
