import 'package:cloud_firestore/cloud_firestore.dart';

class RabbitProfile {
  String? rabbitName;
  String? rabbitType;
  int? dateofPurchase;
  int? cage;
  String? rabbitBreed;
  int? height;
  int? width;
  int? weight;
  String? id;

  RabbitProfile(
      {this.rabbitName,
      this.rabbitType,
      this.dateofPurchase,
      this.cage,
      this.rabbitBreed,
      this.height,
      this.width,
      this.weight,
      this.id});

  RabbitProfile.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    Map data = documentSnapshot!.data() as Map;
    rabbitName = data['RabbitName'] ?? '';
    rabbitType = data['RabbitType'] ?? '';
    dateofPurchase = data['DateofPurchase'] ?? 0;
    cage = data['Cage'] ?? 0;
    rabbitBreed = data['RabbitBreed'] ?? '';
    height = data['Height'] ?? 0;
    width = data['Width'] ?? 0;
    weight = data['Weight'] ?? 0;
    id = documentSnapshot.id;
  }

  RabbitProfile.fromQueryDocumentSnapshot(
      {QueryDocumentSnapshot? queryDocSnapshot}) {
    Map data = queryDocSnapshot!.data() as Map;
    rabbitName = data['RabbitName'] ?? '';
    rabbitType = data['RabbitType'] ?? '';
    dateofPurchase = data['DateofPurchase'] ?? 0;
    cage = data['Cage'] ?? 0;
    rabbitBreed = data['RabbitBreed'] ?? '';
    height = data['Height'] ?? 0;
    width = data['Width'] ?? 0;
    weight = data['Weight'] ?? 0;
    id = queryDocSnapshot.id;
  }

  RabbitProfile.fromJson(Map<String, dynamic> json) {
    rabbitName = json['RabbitName'] as String;
    rabbitType = json['RabbitType'] as String;
    dateofPurchase = json['DateofPurchase'] as int;
    cage = json['Cage'] as int;
    rabbitBreed = json['RabbitBreed'] as String;
    height = json['Height'] as int;
    width = json['Width'] as int;
    weight = json['Weight'] as int;
    id = json['id'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['RabbitName'] = this.rabbitName;
    data['RabbitType'] = this.rabbitType;
    data['DateofPurchase'] = this.dateofPurchase;
    data['Cage'] = this.cage;
    data['RabbitBreed'] = this.rabbitBreed;
    data['Height'] = this.height;
    data['Width'] = this.width;
    data['Weight'] = this.weight;
    data['id'] = this.id;
    return data;
  }
}
