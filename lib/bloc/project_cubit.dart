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
        translations: {
          GooglePlayLanguages.arabic: Metadata(
            appName: '',
            shortDescription: '',
            fullDescription: '',
            changelogs: {
              '1': '',
            },
          ),
          GooglePlayLanguages.englishUnitedStates: Metadata(
            appName: '',
            shortDescription: '',
            fullDescription: '',
            changelogs: {
              '1': '',
            },
          ),
        },
      ),
    );
  }
}
