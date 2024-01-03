import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:youtube_ecommerce/models/product_model.dart';

class FirebaseFirestoreHelper {
  static FirebaseFirestoreHelper instance = FirebaseFirestoreHelper();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<List<CategoryModel>> getCategories() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection("Categories").get();

      List<CategoryModel> CategoriesList = querySnapshot.docs
          .map((e) => CategoryModel.fromJson(e.data()))
          .toList();
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  late Future<List>CategoryModel>> getBestProducts () async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firebaseFirestore.collection("products").get();
      List<ProductModel> productModelList = querySnapshot.docs.map((e) => ProductModel.fromJson(e.data())).toList();
      return productModelList;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
