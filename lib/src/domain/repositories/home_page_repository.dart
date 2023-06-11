import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:make_haton/features/character/domain/entity/character_entity.dart';
import 'package:make_haton/src/domain/repositories/base_firebase_repository.dart';

abstract class HomePageRepository{

  Future<CharacterEntity?>? getCharacter();
  Future<CharacterEntity?>? updateCharacter();


}