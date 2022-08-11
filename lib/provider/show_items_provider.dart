import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:letshelp/helper/App_Bass.dart';
import 'package:letshelp/models/categories.dart';
import 'package:http/http.dart' as http;
import 'package:letshelp/models/show_items_mpdels.dart';
class ShowItemsProvider with ChangeNotifier{

  List<ShowItemModel> _showitems = [];

  List<ShowItemModel> get Showitems{
    return[..._showitems];
  }

  




  Future<void> getshowitems() async {

  final url = Uri.parse(APP_BASE_URL + '/api/items/512/show');

  final response = await http.get(url,
    headers: {"Content-Type": "application/json"},
  );

  if(response.statusCode != 200){
    print("Error fetching data");

  }
  print("Response is ${response.body}");
  final responseData = json.decode(response.body);
  final List<ShowItemModel> loadedShowItems = [];
  for(var unit in responseData){

    loadedShowItems.add(ShowItemModel.fromMap(unit));

  }

  print("data fetched successfully");
  print("data length is ${loadedShowItems.length}");

  _showitems = loadedShowItems;

  }



}