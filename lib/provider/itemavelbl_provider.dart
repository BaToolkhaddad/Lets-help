import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:letshelp/helper/App_Bass.dart';
import 'package:letshelp/models/categories.dart';
import 'package:http/http.dart' as http;

import '../models/avilibal_items_model.dart';
class ItemAvailableProvider with ChangeNotifier{

  List<AvilbaleItemsModel> _items = [];

  List<AvilbaleItemsModel> get items{
    return[..._items];
  }

  




  Future<void> getitemsavailable() async {

  final url = Uri.parse(APP_BASE_URL + '/api/items?size=8&category_id=2&page=1');

  final response = await http.get(url,
    headers: {"Content-Type": "application/json"},
  );

  if(response.statusCode != 200){
    print("Error fetching data");

  }
  print("Response is ${response.body}");
  final responseData = json.decode(response.body);
  final List<AvilbaleItemsModel> loadedItems = [];
  for(var unit in responseData){

    loadedItems.add(AvilbaleItemsModel.fromMap(unit));

  }

  print("data fetched successfully");
  print("data length is ${loadedItems.length}");

  _items = loadedItems;

  }



}