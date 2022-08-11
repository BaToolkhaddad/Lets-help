import 'package:flutter/material.dart';
import 'package:letshelp/screens/homescreene.dart';
import 'package:letshelp/screens/login.dart';

import '../theme/colors.dart';

class CreateAcount extends StatefulWidget {
  const CreateAcount({Key? key}) : super(key: key);

  @override
  State<CreateAcount> createState() => _CreateAcountState();
}

class _CreateAcountState extends State<CreateAcount> {
  TextEditingController emailusr = new TextEditingController();
  TextEditingController nameusr = new TextEditingController();
  TextEditingController passwordusr = new TextEditingController();
  TextEditingController cofirmpasswordusr = new TextEditingController();

  @override
  void initState() {
    super.initState();
    emailusr.addListener(_printLatestValue);
    nameusr.addListener(_printLatestValue);
    passwordusr.addListener(_printLatestValue);
    cofirmpasswordusr.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    emailusr.dispose();
    nameusr.dispose();
    passwordusr.dispose();
    cofirmpasswordusr.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter your email: ${emailusr.text}');
    print('please Enter your Name: ${nameusr.text}');
    print('please Enter your Pssword: ${passwordusr.text}');
    print('please Enter your password again: ${cofirmpasswordusr.text}');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
          Container(
            height: height * 0.35 - 40,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  height: height * 0.5 - 58,
                  decoration: BoxDecoration(
                      color: kTeal400,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35))),
                ),
                Positioned(
                  top: height*.14,
                  left: width * 0.15,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    height: height * 0.25- 40,
                    width: width * 0.6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        // borderRadius: BorderRadius.all(Radius.circular(80)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 40,
                              color: kTeal400.withOpacity(0.30))
                        ]),
                    child: ClipRRect(
                      
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/images/logo.jpg",
                        height: height * .1,
                    width: width * 0.4)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.07,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                              child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.white,
                                  child: SingleChildScrollView(
                                    physics: AlwaysScrollableScrollPhysics(),
                                    child: Padding(
                                        padding: const EdgeInsets.all(7),
                                        child: Center(
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
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
                                                      color: kTeal400,
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
                                                    0.06,
                                                child: TextFormField(
                                                  controller: nameusr,
                                                  style: TextStyle(height: 1),
                                                  keyboardType:
                                                      TextInputType.text,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        const Radius.circular(
                                                            10.0),
                                                      ),
                                                    ),
                                                     labelText: 'الإسم الكامل',
                                                      hintText: '',
                                                    fillColor: Colors.white,
                                                    filled: true,
                                                  ),
                                                  validator: (value) {
                                                    value = nameusr as String?;
                                                    if (value!.isEmpty) {
                                                      print(
                                                          'الرجاء إدخال الإسم');
                                                    }
                                                  },
                                                  onSaved: (value) {},
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .04,
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
                                                      color: kTeal400,
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
                                                    0.06,
                                                child: TextFormField(
                                                  controller: emailusr,
                                                  style: TextStyle(height: 1),
                                                  keyboardType:
                                                      TextInputType.text,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        const Radius.circular(
                                                            10.0),
                                                      ),
                                                    ),
                                                    labelText: 'البريد الإلكتروني/الهاتف',  
                                                    hintText: '',
                                                    fillColor: Colors.white,
                                                    filled: true,
                                                  ),
                                                  validator: (value) {
                                                    value = emailusr as String?;
                                                    if (value!.isEmpty) {
                                                      print(
                                                          'الرجاء إدخال البريد الإلكتروني');
                                                    }
                                                  },
                                                  onSaved: (value) {},
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .04,
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
                                                      color: kTeal400,
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
                                                    0.06,
                                                child: TextFormField(
                                                  controller: passwordusr,
                                                  style: TextStyle(height: 1),
                                                  keyboardType:
                                                      TextInputType.text,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        const Radius.circular(
                                                            10.0),
                                                      ),
                                                    ),
                                                    labelText: 'كلمة المرور',
                                                    hintText: '',
                                                    fillColor: Colors.white,
                                                    filled: true,
                                                  ),
                                                  validator: (value) {
                                                    value =
                                                        passwordusr as String?;
                                                    if (value!.isEmpty) {
                                                      print(
                                                          'الرجاء إدخال كلمة المرور');
                                                    }
                                                  },
                                                  onSaved: (value) {},
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .04,
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
                                                      color: kTeal400,
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
                                                    0.06,
                                                child: TextFormField(
                                                  controller: passwordusr,
                                                  style: TextStyle(height: 1),
                                                  keyboardType:
                                                      TextInputType.text,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        const Radius.circular(
                                                            10.0),
                                                      ),
                                                    ),
                                                    labelText: 'تأكيد كلمة المرور',
                                                    hintText:'تأكيد كلمة المرور',
                                                    fillColor: Colors.white,
                                                    filled: true,
                                                  ),
                                                  validator: (value) {
                                                    value = cofirmpasswordusr
                                                        as String?;
                                                    if (value!.isEmpty) {
                                                      print(
                                                          'الرجاء إعادة إخال كلمة المرور');
                                                    }
                                                  },
                                                  onSaved: (value) {},
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .07,
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
                                                    "تسجيل معلومات الحساب",
                                                    style: TextStyle(color: kGrey200),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    HomeScreen()));
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
                                            
                                            ]))),
                                  )))
                        ]))
              ])
        ])));
  }
}
