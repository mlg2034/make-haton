part of 'chracter_bloc.dart';

abstract class ChracterState extends Equatable {
  const ChracterState(
      {required this.character, required this.customizationItemsEntity});
  final CustomizationItemsEntity customizationItemsEntity;
  final CharacterEntity character;

  @override
  List<Object> get props => [character, customizationItemsEntity];
}
class CharacterLoading extends ChracterState{
  CharacterLoading({required super.character, required super.customizationItemsEntity});

}

class ChracterLoaded extends ChracterState {
  ChracterLoaded(
      {required super.character, required super.customizationItemsEntity,});
}
