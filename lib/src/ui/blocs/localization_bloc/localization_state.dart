part of 'localization_bloc.dart';

class LocalizationState extends Equatable {
  const LocalizationState({
    Language? selectedLanguage,
  }) : selectedLanguage = selectedLanguage ?? Language.kazakh;

  final Language selectedLanguage;

  @override
  List<Object> get props => [selectedLanguage];

  LocalizationState copyWith({Language? selectedLanguage}) {
    return LocalizationState(
      selectedLanguage: selectedLanguage ?? this.selectedLanguage,
    );
  }
}
