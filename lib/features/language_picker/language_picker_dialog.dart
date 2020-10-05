import 'dart:typed_data';

import 'package:app_courier/models/models.dart';
import 'package:app_courier/widgets/widgets.dart';
import 'package:flutter/material.dart';

bool defaultIsLanguageDisabled(Language _) => false;

typedef LanguageConditionBuilder = bool Function(Language);

class LanguagePickerDialog extends StatefulWidget {
  const LanguagePickerDialog({
    Key key,
    @required this.languages,
    this.multiple = false,
    LanguageConditionBuilder isLanguageDisabled,
  })  : isLanguageDisabled = isLanguageDisabled ?? defaultIsLanguageDisabled,
        super(key: key);

  /// List of languages that will be shown on the language picker list.
  final List<Language> languages;

  /// Whether it should be possible to pick more than one language.
  final bool multiple;

  /// Languages that return `true` will be muted and will not be selectable.
  final LanguageConditionBuilder isLanguageDisabled;

  @override
  _LanguagePickerDialogState createState() => _LanguagePickerDialogState();
}

class _LanguagePickerDialogState extends State<LanguagePickerDialog> {
  final Set<Language> selectedLanguages = {};

  void _onSelectTap(BuildContext context) {
    Navigator.of(context).pop(selectedLanguages);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 20),
      title: widget.multiple
          ? const Text('Select languages')
          : const Text('Select a language'),
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(height: 1),
          Flexible(
            child: SizedBox(
              width: 300,
              height: 400,
              child: Material(
                child: ListView.builder(
                  itemCount: widget.languages.length,
                  itemBuilder: (context, i) {
                    final language = widget.languages[i];
                    final selected = selectedLanguages.contains(language);

                    return LanguageListTile(
                      language: language,
                      selected: selected,
                      onTap: () {
                        if (!selected && !widget.multiple) {
                          setState(() => selectedLanguages
                            ..clear()
                            ..add(language));
                        } else if (selected) {
                          setState(() => selectedLanguages.remove(language));
                        } else {
                          setState(() => selectedLanguages.add(language));
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                if (widget.multiple)
                  Text('${selectedLanguages.length} selected'),
                const Spacer(),
                ElevatedButton(
                  onPressed: () => _onSelectTap(context),
                  child: const Text('SELECT'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
