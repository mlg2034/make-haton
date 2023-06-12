import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:make_haton/features/auth/domain/entities/user_entity.dart';

class FirebaseDataSource {
  final store = FirebaseFirestore.instance;

  ///[queryingUIdField] это ключ, по которому мы определяем, есть ли у [user]
  ///объектs [collectionName]
  Future<Map<String, dynamic>?> getDataLinkedToUserID(String  collectionName, String queryingUIdField,UserEntity user) async {
    final query = (await FirebaseFirestore.instance
        .collection(collectionName)
        .where(queryingUIdField, isEqualTo: user.id)
        .get());
    final object = query.docs.firstOrNull?.data();

    return object;
  }

  delete(String  collectionName, String queryingUIdField,UserEntity user,) async{

  }
}
