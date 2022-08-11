import 'package:flutter/material.dart';
import 'package:letshelp/models/avilibal_items_model.dart';
import 'package:letshelp/models/categories.dart';
import 'package:letshelp/models/show_items_mpdels.dart';
import 'package:letshelp/provider/categories_provider.dart';
import 'package:letshelp/provider/image_provider.dart';
import 'package:letshelp/provider/itemavelbl_provider.dart';
import 'package:letshelp/provider/product.dart';
import 'package:letshelp/provider/show_items_provider.dart';

import 'package:letshelp/screens/ceate_acount.dart';
import 'package:letshelp/screens/homescreene.dart';
import 'package:letshelp/screens/login.dart';
import 'package:letshelp/screens/product_detail_screen.dart';
import 'package:letshelp/widgets/product_item.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      
         ChangeNotifierProvider(
          create: (_) => Product(description: '', image: '', isStar: false, id: '', stat:1 , title: ''),
        ),
        ChangeNotifierProvider.value(value: CategoriesProvider(),),
        Provider.value(value: Categories()),
               ChangeNotifierProvider.value(value: ItemAvailableProvider(),),
        Provider.value(value: AvilbaleItemsModel()),
           ChangeNotifierProvider.value(value: ShowItemsProvider(),),
        Provider.value(value: ShowItemModel()),

      
      ],
      child: MaterialApp(
      
     debugShowCheckedModeBanner: false,
    
    
          title: 'Lets Help',
          theme: ThemeData(
          
            fontFamily: 'Lato',
          ),
          home: Login(),
     
    ));
  }
}
