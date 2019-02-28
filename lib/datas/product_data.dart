import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData{

  String category;
  String id;
  String title;
  String description;
  double price;
  List images;
  List sizes;

  ProductData.fromDocument(DocumentSnapshot snp){
    id = snp.documentID;
    title = snp.data["title"];
    description = snp.data["description"];
    price = snp.data["price"];
    images = snp.data["images"];
    sizes = snp.data["sizes"];

  }
}