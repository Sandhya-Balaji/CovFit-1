import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/profile.dart';

class DatabaseService {

  final String uid;

  DatabaseService({this.uid});

  FirebaseFirestore _fireStoreDataBase = FirebaseFirestore.instance;

  Stream<List<Profile>> getProfile() {
    return _fireStoreDataBase.collection('Patient').snapshots().map((
        snapShot) =>
        snapShot.docs.map((document) =>
            Profile.fromJson(document.data(), document.id))
            .toList());
  }

  Future<void> addProfile(Profile pf) async {
    return await _fireStoreDataBase.collection('Patient').doc(uid).set(pf.toJson());
  }


}