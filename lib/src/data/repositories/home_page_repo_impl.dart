import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:make_haton/features/character/domain/entity/character_entity.dart';
import 'package:make_haton/shared/app_strings.dart';
import 'package:make_haton/src/domain/repositories/home_page_repository.dart';

class HomePageRepoImpl implements HomePageRepository{
  final FirebaseFirestore fbStore = FirebaseFirestore.instance;

  @override
  Future<CharacterEntity?>? getCharacter() async{
    final a = await fbStore.doc(FirebaseKeys.character).get();
    a.data();
  }

  @override
  Future<CharacterEntity?>? updateCharacter() {
    // TODO: implement updateCharacter
    throw UnimplementedError();
  }


}