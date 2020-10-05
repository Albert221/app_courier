import 'package:app_courier/bloc/languages_search_cubit.dart';
import 'package:app_courier/bloc/project_cubit.dart';
import 'package:app_courier/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../widgets/language_list_tile.dart';

class SideBar extends HookWidget {
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
                  language: Text(language.name),
                  code: Text(language.code),
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
                    label: const Text('Add language'),
                    onPressed: () {},
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
