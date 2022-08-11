import 'package:flutter/cupertino.dart';
import 'package:letshelp/models/image.dart';

class PImageProvider with ChangeNotifier {
  List<Imageav> _itemsc1 = [
    Imageav(
      image: Image.asset("assets/images/4.jpg"),
      id: "1",
    ),
    Imageav(
      image: Image.asset("assets/images/4.jpg"),
      id: "2",
    ),
    Imageav(
      image: Image.asset("assets/images/4.jpg"),
      id: "3",
    ),
    Imageav(
      image: Image.asset("assets/images/4.jpg"),
      id: "3",
    ),
  ];

  List<Imageav> get itemsc1 {
    return [..._itemsc1];
  }

  List<Imageav> findByUserId(String userid) {
    return _itemsc1.where((element) => element.id == userid).toList();
  }
}
