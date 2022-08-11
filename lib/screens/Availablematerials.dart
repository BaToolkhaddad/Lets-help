import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../widgets/availbelproduct.dart';

class AvailableMaterials extends StatefulWidget {
  const AvailableMaterials({ Key? key }) : super(key: key);

  @override
  State<AvailableMaterials> createState() => _AvailableMaterialsState();
}

class _AvailableMaterialsState extends State<AvailableMaterials> {
  @override
  Widget build(BuildContext context) {
       var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
   
    return Scaffold(
        appBar: AppBar(
            backgroundColor: kTeal400,
            title: Text(
              "المواد المتاحة ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
        body:  SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child:  Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
               
           
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AvailbaleProductWidget(),
                            ],
                          ),
                  SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
               
                        
                  
                ],
              ),
        ),
          
        ),);
  }
}
