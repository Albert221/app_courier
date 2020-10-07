import 'package:app_courier/features/language_picker/language_picker_dialog.dart';
import 'package:app_courier/models/models.dart';
import 'package:app_courier/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'bloc/languages_search_cubit.dart';
import 'bloc/project_cubit.dart';

class SideBar extends HookWidget {
  Future<void> _onAddLanguageTap(BuildContext context) async {
    final retainLanguages = context.bloc<ProjectCubit>().state.languages;
    final languages = await showDialog<Set<Language>>(
      context: context,
      builder: (_) => LanguagePickerDialog(
        languages: GooglePlayLanguages.values
            .where((language) => !retainLanguages.contains(language))
            .toList(),
        multiple: true,
      ),
    );

    if (languages != null) {
      for (final language in languages) {
        context.bloc<ProjectCubit>().addLanguage(language);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final languagesSearchCubit = useLanguagesSearchCubit(
      context.bloc<ProjectCubit>(),
    );
    final currentLanguage = useState(GooglePlayLanguages.englishUnitedStates);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextField(
            onChanged: (query) => languagesSearchCubit.updateQuery(query),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(16),
              isDense: true,
              prefixIcon: Icon(Icons.search),
              hintText: 'Search...',
            ),
          ),
        ),
        Expanded(
          child: BlocBuilder<LanguagesSearchCubit, LanguagesSearchState>(
            cubit: languagesSearchCubit,
            builder: (context, searchState) => ListView.builder(
              itemCount: searchState.languages.length,
              itemBuilder: (context, i) {
                final language = searchState.languages[i];

                return LanguageListTile(
                  language: language,
                  selected: currentLanguage.value == language,
                  onTap: () => currentLanguage.value = language,
                );
              },
            ),
          ),
        ),
        Divider(
          height: 1,
          color: Theme.of(context).colorScheme.surface,
        ),
        Material(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.add_box),
                    label: const Text('ADD LANGUAGE'),
                    onPressed: () => _onAddLanguageTap(context),
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

LanguagesSearchCubit useLanguagesSearchCubit(ProjectCubit projectCubit) {
  final cubit = useMemoized(() => LanguagesSearchCubit(projectCubit));
  useEffect(() => cubit.close, [cubit]);

  return cubit;
}
