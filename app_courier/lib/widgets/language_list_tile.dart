import 'package:app_courier/models/models.dart';
import 'package:flutter/material.dart';

class LanguageListTile extends StatelessWidget {
  const LanguageListTile({
    Key key,
    @required this.language,
    this.leading,
    this.selected = false,
    this.onTap,
  }) : super(key: key);

  final Language language;
  final Widget leading;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      selectedColor: Theme.of(context).colorScheme.onSurface,
      selectedTileColor: Theme.of(context).colorScheme.surface,
      child: ListTile(
        leading: leading,
        title: DefaultTextStyle.merge(
          maxLines: 1,
          overflow: TextOverflow.fade,
          softWrap: false,
          child: Text(language.name),
        ),
        trailing: DefaultTextStyle.merge(
          style: const TextStyle(fontSize: 12),
          child: Text(language.code),
        ),
        selected: selected,
        onTap: onTap,
      ),
    );
  }
}
