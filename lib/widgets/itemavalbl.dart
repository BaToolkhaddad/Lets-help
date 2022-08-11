import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letshelp/models/avilibal_items_model.dart';
import 'package:letshelp/models/categories.dart';
import 'package:letshelp/theme/colors.dart';
import 'package:provider/provider.dart';

class ItemAvalbl extends StatefulWidget {
  const ItemAvalbl({Key? key}) : super(key: key);

  @override
  _ItemAvalblState createState() => _ItemAvalblState();
}

class _ItemAvalblState extends State<ItemAvalbl> {
  @override
  Widget build(BuildContext context) {

    final itemmod = Provider.of<AvilbaleItemsModel>(context,listen: false);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print('gbttgbgbyn');
     print('picccc ${itemmod.icon}');

      return
        Container(
      height: height * 0.4,
      width: width * 0.45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(width: 4,color: kTeal100),
          color: kLightPrimary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0,3),
              blurRadius: 10,
            )
          ]
      ),
      child: Stack(
        children: [
          GestureDetector(
               
                    child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .46,
                            height: MediaQuery.of(context).size.height * .4,

                            /// 150.0
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                    color: kTeal400,
                                  )
                                ]),
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .35,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .25,

                          /// 150.0
    child: Image.network(itemmod.icon!,fit: BoxFit.fill,color: kTeal400,)                              
                                    ),
                                  
                                  ],
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(
                                                "تم الطلب",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        fontSize: 14,
                                                        color: kTeal400),
                                              ),
                                              action: SnackBarAction(
                                                  label: "الغاء",
                                                  textColor: Colors.white,
                                                  onPressed: () {})));
                                    },
                                    child: Container(
                                      height: height / 16.66,

                                      /// 50.0
                                      width: width / 9.22,

                                      /// 50.0
                                      decoration: BoxDecoration(
                                          color: kTeal400,
                                          borderRadius: const BorderRadius.only(
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(20.0),
                                          )),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])),
        ],
      ),
    );    }

  }
