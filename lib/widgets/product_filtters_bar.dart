import 'package:flutter/material.dart';
import 'package:letshelp/models/categories.dart';
import 'package:letshelp/provider/categories_provider.dart';
import 'package:letshelp/widgets/category_item.dart';
import 'package:provider/provider.dart';

import '../screens/product.dart';
import '../theme/colors.dart';

class ProductFiltersBar extends StatefulWidget {
  @override
  _ProductFiltersBarState createState() => _ProductFiltersBarState();
}

class _ProductFiltersBarState extends State<ProductFiltersBar> {


  @override
  Widget build(BuildContext context) {
    final categoryProv =
        Provider.of<CategoriesProvider>(context, listen: false);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return FutureBuilder(
      future: Future.wait([categoryProv.getCategories()]),
      builder: (BuildContext ctx, AsyncSnapshot snapshotData) {
        if (snapshotData.connectionState == ConnectionState.waiting) {
          return const Center(
            child: const CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
              reverse: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(1.0),
              itemCount: categoryProv.Categoties.length,
              itemBuilder: (context, i) {
                return Provider.value(
                  value: categoryProv.Categoties[i],
                  child: CategoryItem(),
                );
              });
        }
      },
    );

    //   ListView(
    //   reverse: true,
    //   scrollDirection: Axis.horizontal,
    //   padding: const EdgeInsets.all(1.0),
    //   children: [
    //     Container(
    //       padding: const EdgeInsets.only(
    //         left: 10.0,
    //       ),
    //       margin: const EdgeInsets.symmetric(horizontal: 2.0),
    //       child: furniture(),
    //     ),
    //   ],
    // );
  }
}
