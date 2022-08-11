import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letshelp/models/categories.dart';
import 'package:letshelp/theme/colors.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {

    final category = Provider.of<Categories>(context,listen: false);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;


      return
        Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // image: DecorationImage(
                    //
                    //   fit: BoxFit.contain,
                    //   image: NetworkImage(category.icon!)
                    // ),
                    boxShadow: [
                      BoxShadow(
                        color: kGrey501,

                        spreadRadius: 1,

                        blurRadius: 1,

                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * .2,
                  height: MediaQuery.of(context).size.height * .1,
                  child: Container(
                    height: height * 0.2,
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Image.network(category.icon!,fit: BoxFit.fill,color: kTeal400,)),
                  )
                // IconButton(
                //     onPressed: () {
                //       Navigator.push(context,
                //           MaterialPageRoute(builder: (context) => Product()));
                //     },
                //     icon: Icon(
                //       Icons.add_shopping_cart,
                //       size: 30,
                //       color: kTeal400,
                //     )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Text(
                category.name!,
                style: TextStyle(
                  color: kTeal400,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
        ],
      );
    }

  }
