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
      color:
          selected ? Theme.of(context).colorScheme.surface : Colors.transparent,
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
              Container(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.background,
                ),
                child: DefaultTextStyle.merge(
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  child: code,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
