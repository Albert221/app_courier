import 'dart:async';

import 'package:app_courier/bloc/project_cubit.dart';
import 'package:app_courier/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'languages_search_cubit.freezed.dart';

class LanguagesSearchCubit extends Cubit<LanguagesSearchState> {
  LanguagesSearchCubit(this._projectCubit)
      : super(LanguagesSearchState(
          languages: _getLanguages(_projectCubit.state),
        )) {
    _projectCubitSubscription = _projectCubit.listen((project) {
      emit(LanguagesSearchState(
        query: state.query,
        languages: _filterLanguages(_getLanguages(project), state.query),
      ));
    });
  }

  final ProjectCubit _projectCubit;
  StreamSubscription _projectCubitSubscription;

  @override
  Future<void> close() {
    return Future.wait([
      _projectCubitSubscription.cancel(),
      super.close(),
    ]);
  }

  void updateQuery(String query) {
    emit(LanguagesSearchState(
      query: query,
      languages: _filterLanguages(_getLanguages(_projectCubit.state), query),
    ));
  }

  void clear() {
    emit(LanguagesSearchState(languages: _getLanguages(_projectCubit.state)));
  }

  static List<Language> _getLanguages(Project project) =>
      project?.translations?.keys?.toList() ?? [];

  List<Language> _filterLanguages(List<Language> languages, String query) {
    return languages.where((language) {
      if (language.code.toLowerCase().contains(query.toLowerCase())) {
        return true;
      }

      return language.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}

@freezed
abstract class LanguagesSearchState with _$LanguagesSearchState {
  const factory LanguagesSearchState({
    @Default('') String query,
    @required List<Language> languages,
  }) = _LanguagesSearchState;
}
