import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double stat;
  final String image;
  late final bool isStar;



  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.stat,
    required this.image,
    required this.isStar,



  
  });

   void toggleStarStatus() {
    isStar = !isStar;
    notifyListeners();
  }
}

