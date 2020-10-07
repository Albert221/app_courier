import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show SystemMouseCursors;

class NavigationSectionItem<T> {
  NavigationSectionItem({
    @required this.child,
    this.value,
  });

  final Widget child;
  final T value;
}

class NavigationSection<T> extends StatelessWidget {
  const NavigationSection({
    Key key,
    @required this.title,
    @required this.items,
    @required this.value,
    this.onChanged,
  }) : super(key: key);

  final Widget title;
  final List<NavigationSectionItem<T>> items;
  final T value;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextStyle.merge(
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontWeight: FontWeight.bold,
            fontSize: 12,
            fontFeatures: const [FontFeature.enable('smcp')],
          ),
          child: title,
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            for (final item in items) ...[
              if (items.indexOf(item) > 0) const SizedBox(width: 16),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => onChanged?.call(item.value),
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.ease,
                    style: TextStyle(
                      color: item.value != value
                          ? Theme.of(context).colorScheme.onBackground
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                    child: item.child,
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
