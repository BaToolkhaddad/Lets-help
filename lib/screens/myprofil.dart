import 'dart:ui';

import 'package:flutter/material.dart';

import '../theme/colors.dart';
class MyProfil extends StatefulWidget {
  const MyProfil({ Key? key }) : super(key: key);

  @override
  State<MyProfil> createState() => _MyProfilState();
}

class _MyProfilState extends State<MyProfil> {
 @override
  Widget build(BuildContext context) {
    final mdw = MediaQuery.of(context).size.width;
    final mdh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Transform.scale(
                scale: 2,
                child: Transform.translate(
                    offset: Offset(0, -mdw * 0.7),
                    child: Center(
                      child: Container(
                        width: mdw,
                        height: mdw,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(mdw),
                            color: kTeal400),
                      ),
                    )),
              ),
            ),
            // Container(
            //   width: double.infinity,
            //   height: double.infinity,
            //   color: Colors.red,
            // ),

           
            SizedBox(height: mdh * .15),
            Positioned(
              top: mdh * .13,
              left: mdw * .35,
              child: Center(
                child: Container(
                  height: 130,
                  width: 130,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                     // horizontal: 30,
                    ),
                 
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        // borderRadius: BorderRadius.all(Radius.circular(80)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 40,
                              color: kTeal400.withOpacity(0.30))
                        ]),
                    child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/images/images-2.jpg",
                height: 130,
                width: 130,
                )),
                  ),
                ),
              ),
            
            Positioned(
                top: mdh * .35,
                left: mdw * .39,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text("بتول الحداد" ,
                     style: TextStyle(color: Colors.black, 
                     fontWeight: FontWeight.bold, fontSize: 23 ,
                     //fontFamily: 'TrajanPro' )
                    )),
                  ),
                )),
                
       
                          
                    Positioned(
                top: mdh * .45,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: mdw * .1),
                  width: mdw,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                     mainAxisAlignment: MainAxisAlignment.end,
                   
                        children: [
                          Text('المعلومات الشخصية ', style: TextStyle(color: kTeal400, fontWeight: FontWeight.bold , fontSize: 20),),
SizedBox(height: MediaQuery.of(context).size.height*.04),
                       
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.end,
                     mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                               
                               
                          Text("أنثى",style: TextStyle( fontWeight: FontWeight.bold )),
                           SizedBox(width: MediaQuery.of(context).size.width*.02,),
                           Text(" : الجنس   ",style: TextStyle( fontWeight: FontWeight.bold )),
                              ],
                            ),
                          SizedBox(height: MediaQuery.of(context).size.height*.02),

                          Row(
  crossAxisAlignment: CrossAxisAlignment.end,
                     mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              
                             
                              Text("29-1-1998",style: TextStyle( fontWeight: FontWeight.bold )),
                               SizedBox(width: MediaQuery.of(context).size.width*.02,),
                              Text(" : تاريخ الميلاد ",style: TextStyle( fontWeight: FontWeight.bold )),
                            ],
                          ),  
                           SizedBox(height: MediaQuery.of(context).size.height*.02),

                              Row(
  crossAxisAlignment: CrossAxisAlignment.end,
                     mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              
                             
                              Text("0991666777",style: TextStyle( fontWeight: FontWeight.bold )),
                               SizedBox(width: MediaQuery.of(context).size.width*.02,),
                              Text(" : رقم الهاتف   ",style: TextStyle( fontWeight: FontWeight.bold )),
                            ],
                          ),
                          
                              // SizedBox(height: MediaQuery.of(context).size.height*.02),
                        ],
                      ),
                  
                    
                    
                      
                                                                     
                    
                  
                )),

          
      
       ])));           
          
      
      
    
 }
}