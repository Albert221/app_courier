import 'package:app_courier/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectCubit extends Cubit<Project> {
  ProjectCubit() : super(null);

  void openProject() {
    // TODO: Open project from picker;

    emit(
      Project(
        path: 'C:/AndroidStudioProjects/FastShopping',
        defaultName: 'Fast Shopping',
        translations: const [
          Metadata(
            language: GooglePlayLanguages.arabic,
            appName: '',
            shortDescription: '',
            fullDescription: '',
            changelogs: {
              '1': '',
            },
          ),
          Metadata(
            language: GooglePlayLanguages.englishUnitedStates,
            appName: '',
            shortDescription: '',
            fullDescription: '',
            changelogs: {
              '1': '',
            },
          ),
        ],
      ),
    );
  }

  void addLanguage(Language language) {
    if (state.translations
        .any((translation) => translation.language == language)) {
      throw StateError('Cannot add a language that is already present.');
    }

    emit(
      state.copyWith(
        translations: [
          ...state.translations,
          Metadata(
            language: language,
            appName: '',
            shortDescription: '',
            fullDescription: '',
            changelogs: {
              '1': '',
            },
          ),
        ]..sort((a, b) => a.language.name.compareTo(b.language.name)),
      ),
    );
  }
}
