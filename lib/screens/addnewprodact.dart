import 'dart:ui';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:letshelp/models/categories.dart';
import 'package:letshelp/provider/categories_provider.dart';
import 'package:letshelp/theme/colors.dart';
import 'package:provider/provider.dart';

import 'map_pick_location_screen.dart';

class goToAddNewProdact extends StatefulWidget {
  const goToAddNewProdact({ Key? key }) : super(key: key);

  @override
  State<goToAddNewProdact> createState() => _goToAddNewProdactState();
}

class _goToAddNewProdactState extends State<goToAddNewProdact> {

  
  String? dropdowntyprsrvic;
Categories? categoryDropDownValue;
  

   TextEditingController Servicename = new TextEditingController();
  TextEditingController contry = new TextEditingController();
    TextEditingController city = new TextEditingController();
   TextEditingController location = new TextEditingController();

  TextEditingController description = new TextEditingController();
  
   

  @override
  void initState() {
    super.initState();
    Servicename.addListener(_printLatestValue);
    contry.addListener(_printLatestValue);
        city.addListener(_printLatestValue);
          location.addListener(_printLatestValue);

    description.addListener(_printLatestValue);

  
 
  }

  @override
  void dispose() {
    Servicename.dispose();
    contry.dispose();
        city.dispose();
        location.dispose();

    description.dispose();

    
  
    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter The name of service: ${Servicename.text}'); 
    print('please Enter your contry: ${contry.text}');
        print('please Enter your city: ${city.text}');
 print('please Enter your location of : ${location.text}');
    print('please Enter discription about of product: ${description.text}');
    
  

  }


  late String mainPhoto;

 void setMainPhoto(String image) {
    mainPhoto = image;
  }
 
    var _pickedLocation;
 
  Future<void> _selectOnMap() async {
    final selectedLocation = await Navigator.of(context).push<LatLng>(
      MaterialPageRoute(
        builder: (ctx) => MapToPickLocationScreen(),
      ),
    );
    setState(() {
      _pickedLocation = selectedLocation;
    });
  } 



File? image ;
final imagePicked = ImagePicker();
uploadImage  ()async{
var pickedImage = await imagePicked.getImage(source: ImageSource.gallery);
if(pickedImage !=null){
  setState(() {
    image=File(pickedImage.path);

  });

}else{}

}

  @override
  Widget build(BuildContext context) {
       final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
  
 final selectortype = Provider.of<CategoriesProvider>(context, listen: false);

        


  
    return Form(
      child: FutureBuilder(
        future: Future.wait(
              [
              selectortype.getCategories()              
              ]),            
          builder: (BuildContext ctx, AsyncSnapshot snapshotData) {
            if (snapshotData.connectionState == ConnectionState.waiting) {
              return const Center(
                child: const CircularProgressIndicator(),
              );
            }
    
    return Scaffold(
      appBar: AppBar(
        title: Text('إضافة منتج'),
              backgroundColor: kTeal400,

      ),
        body: SingleChildScrollView(
                                            physics: AlwaysScrollableScrollPhysics(),

    
                                        child: Center(
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                     SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .02,
                                              ),

                                    
                                             Container(
                                   
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.06,
                                                child: DropdownButton<Categories>(
        hint: Text(
          'نوع الخدمة',
          style: TextStyle(fontSize: 16),
        ),
        value: categoryDropDownValue,
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        onChanged: (Categories? newValue) {
          setState(() {
            categoryDropDownValue = newValue!;
          });
          categoryDropDownValue == null ? "" : newValue;
        },
        items:
            selectortype.Categoties.map<DropdownMenuItem<Categories>>((value) {
          return DropdownMenuItem<Categories>(
            value: value,
            child: Text(value.name!),
          );
        }).toList(),
      ),
    
                                ),


                                           
                                            Container(
                                             
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.06,
                                                child: TextFormField(
                                                  controller: Servicename,
                                                  style: TextStyle(height: 1),
                                                  keyboardType:
                                                      TextInputType.text,
                                                       cursorColor: kTeal400,
                                                  decoration: InputDecoration(
                                                     labelText: 'اسم الخدمة',
                                                    hintText: '',
                                                    fillColor: Colors.white,
                                                  // filled: true,
                                                  ),
                                                  validator: (value) {
                                                    value = Servicename as String?;
                                                    if (value!.isEmpty) {
                                                      print(
                                                          'الرجاء إدخال اسم الخدمة');
                                                    }
                                                  },
                                                  onSaved: (value) {},
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .02,
                                              ),
                                               Container(
                                               
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.06,
                                                child: TextFormField(
                                                  controller: contry,
                                                  style: TextStyle(height: 1),
                                                  keyboardType:
                                                      TextInputType.text,
                                                       cursorColor: kTeal400,
                                                  decoration: InputDecoration(
                                                 
                                                     labelText: 'البلد',
                                                    hintText: '',
                                                    fillColor: Colors.white,
                                                //    filled: true,
                                                  ),
                                                  validator: (value) {
                                                    value = contry as String?;
                                                    if (value!.isEmpty) {
                                                      print(
                                                          'الرجاء إدخال اسم بلدك ');
                                                    }
                                                  },
                                                  onSaved: (value) {},
                                                ),
                                              ),

                                               SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .02,
                                              ),
                                              Container(
                                               
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.06,
                                                child: TextFormField(
                                                  controller: city,
                                                  style: TextStyle(height: 1),
                                                  keyboardType:
                                                      TextInputType.text,
                                                       cursorColor: kTeal400,
                                                  decoration: InputDecoration(
                                                  
                                                     labelText: 'المدينة',
                                                    hintText: '',
                                                    fillColor: Colors.white,
                                                 //   filled: true,
                                                  ),
                                                  validator: (value) {
                                                    value = city as String?;
                                                    if (value!.isEmpty) {
                                                      print(
                                                          'الرجاء إدخال اسم مدينتك ');
                                                    }
                                                  },
                                                  onSaved: (value) {},
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .02,
                                              ),
                                           Container(
                                               
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.06,
                                                child: TextFormField(
                                                  controller: location,
                                                  style: TextStyle(height: 1),
                                                  keyboardType:
                                                      TextInputType.text,
                                                      cursorColor: kTeal400,
                                                  decoration: InputDecoration(
                                                    
                                                     labelText: 'الموقع',
                                                    hintText: '',
                                                    fillColor: Colors.white,
                                                   // filled: true,
                                                  ),
                                                  validator: (value) {
                                                    value = location as String?;
                                                    if (value!.isEmpty) {
                                                      print(
                                                          'الرجاء إدخال الموقع ');
                                                    }
                                                  },
                                                  onSaved: (value) {},
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .02,
                                              ),
           Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(5),
                                                    bottomRight:
                                                        Radius.circular(5),
                                                    topLeft:
                                                        Radius.circular(5),
                                                    bottomLeft:
                                                        Radius.circular(5),
                                                  ),
                                                  color: Colors.white54,
                                                 
                                                ),
                                              
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.15,
                                                child: TextFormField(
                                                  controller: description,
                                                  style: TextStyle(height: 3),
                                                  keyboardType:
                                                      TextInputType.multiline,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        const Radius.circular(
                                                            10.0),
                                                      ),
                                                    ),
                                                     labelText: 'وصف المنتج',
                                                    hintText: '',
                                                    fillColor: Colors.white,
                                                    filled: true,
                                                  ),
                                                  validator: (value) {
                                                    value =description as String?;
                                                    if (value!.isEmpty) {
                                                      print(
                                                          'الرجاء إدخال وصف المنتج');
                                                    }
                                                  },
                                                  onSaved: (value) {},
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .02,
                                              ),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                   TextButton.icon(
                                  onPressed: _selectOnMap,
                                  icon: Icon(
                                    Icons.pin_drop_rounded,
                                    color: _pickedLocation == null
                                        ? Colors.red
                                        : Colors.green,
                                  ),
                                  label: _pickedLocation == null
                                      ? Text('حدّد موقعك على الخريطة',style: TextStyle(color: Colors.blue),)
                                      : Text('تم تحديد الموقع '),
                                ),
                                          
                                                ],
                                              ),
                                              
                                                  SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .02,
                                              ),
             Row(
                  mainAxisAlignment: MainAxisAlignment.center,

               children: [
                 IconButton(onPressed: uploadImage, icon: Icon(Icons.add_a_photo_outlined,color: kTeal400,)),
                            Text('أضف صورة للمنتج',style: TextStyle(color: kTeal400),),

               ],
             ),
 Container(
  height: height*.3,
  width: width*.7,
   child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
  
       image==null ?Text('لا يوجد صورة' , style: TextStyle(color: Colors.grey),) :  Image.file(image!) 
      ],
    
    ),
 ),
     


                                                 SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .1,
                                              ),
                                            
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.white,
                                                      spreadRadius: 1,
                                                      blurRadius: 1,
                                                      offset: Offset(0,
                                                          1), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .06,
                                                child: ElevatedButton(
                                                  child: Text(
                                                    "نشر",
                                                     style: TextStyle(color: kGrey200,fontSize: 20,)
                                                    
                                                  ),
                                                  onPressed: () {
                                                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: LinearProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).accentColor),
                          backgroundColor: Theme.of(context).primaryColorLight,
                        ),
                                                    );
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: kTeal400,
                                                    minimumSize:
                                                        const Size(300, 75),
                                                    maximumSize:
                                                        const Size(300, 75),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: height * 0.06,
                                              ),

         
                              
                                  ]            )
                                  )
                                    )
                        
                       );
        }
));      }
}





 


