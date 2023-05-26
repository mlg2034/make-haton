import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:make_haton/src/domain/entities/language_enum.dart';

part 'localization_state.dart';
part 'localization_event.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc(
    super.initialState,
  ) {
    on<ChangeLanguage>((event, emit) {
      emit(state.copyWith(selectedLanguage: event.selectedLanguage));
    });
  }
}
