
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letshelp/models/categories.dart';
import 'package:letshelp/widgets/itemavalbl.dart';
import 'package:provider/provider.dart';

import '../models/avilibal_items_model.dart';
import '../provider/itemavelbl_provider.dart';
import '../theme/colors.dart';

class AvailbaleProductWidget extends StatefulWidget {
  const AvailbaleProductWidget({Key? key}) : super(key: key);

  @override
  _AvailbaleProductWidgetState createState() => _AvailbaleProductWidgetState();
}

class _AvailbaleProductWidgetState extends State<AvailbaleProductWidget> {
  @override
  Widget build(BuildContext context) {


    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
     final itemmod =Provider.of<AvilbaleItemsModel>(context, listen: false);
  final itemProv =Provider.of<ItemAvailableProvider>(context, listen: false);
    return FutureBuilder(
      future: Future.wait([itemProv.getitemsavailable()]),
      builder: (BuildContext ctx, AsyncSnapshot snapshotData) {
        if (snapshotData.connectionState == ConnectionState.waiting) {
          return const Center(
            child: const CircularProgressIndicator(),
          );
        } else {
      return  SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child:
      Container(
        height: height*.99,
        width: width*.99,
        child: GridView.builder(
        padding: const EdgeInsets.all(6),
        itemCount: itemProv.items.length,
        itemBuilder: (ctx, i) => Provider.value(
                      value: itemProv.items[i],
                      
                        child: ItemAvalbl(),
            ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
         childAspectRatio: 3 / 3.5,
           crossAxisSpacing: 15,
           mainAxisSpacing: 10,
        ),
    ),
       ) );
      
 
      }}
    );}
      }
