import 'package:cloud_firestore/cloud_firestore.dart';

class UserCollectionFireBase {
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');
  Future getUserInfo(String uid) async {
    var usr = await userCollection.doc(uid).get();
    return usr.data()! as Map<String, dynamic>;
  }

  Future registratUsuario({
    required String uId,
    required String name,
    required String last_name,
    required String email,
    required String phone,
    required String age,
    required String sex,
  }) async {
    userCollection.doc(uId).set({
      'name': name,
      'last_name': last_name,
      'email': email,
      'phone': phone,
      'age': age,
      'sex': sex
    });
  }
}
