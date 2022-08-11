import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:letshelp/helper/App_Bass.dart';
import 'package:letshelp/models/categories.dart';
import 'package:http/http.dart' as http;
class CategoriesProvider with ChangeNotifier{

  List<Categories> _categories = [];

  List<Categories> get Categoties{
    return[..._categories];
  }

  




  Future<void> getCategories() async {

  final url = Uri.parse(APP_BASE_URL + '/api/categories');

  final response = await http.get(url,
    headers: {"Content-Type": "application/json"},
  );

  if(response.statusCode != 200){
    print("Error fetching data");

  }
  print("Response is ${response.body}");
  final responseData = json.decode(response.body);
  final List<Categories> loadedItems = [];
  for(var unit in responseData){

    loadedItems.add(Categories.fromMap(unit));

  }

  print("data fetched successfully");
  print("data length is ${loadedItems.length}");

  _categories = loadedItems;

  }



}