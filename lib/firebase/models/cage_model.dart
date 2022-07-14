import 'package:cloud_firestore/cloud_firestore.dart';

class Cage {
  String? cageName;
  String? description;
  String? id;

  Cage({this.cageName, this.description, this.id});

  Cage.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    Map data = documentSnapshot!.data() as Map;
    cageName = data['CageName'] ?? '';
    description = data['Description'] ?? '';
    id = documentSnapshot.id;
  }

  Cage.fromQueryDocumentSnapshot({QueryDocumentSnapshot? queryDocSnapshot}) {
    Map data = queryDocSnapshot!.data() as Map;
    cageName = data['CageName'] ?? '';
    description = data['Description'] ?? '';
    id = queryDocSnapshot.id;
  }

  Cage.fromJson(Map<String, dynamic> json) {
    cageName = json['CageName'] as String;
    description = json['Description'] as String;
    id = json['id'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['CageName'] = this.cageName;
    data['Description'] = this.description;
    data['id'] = this.id;
    return data;
  }
}
