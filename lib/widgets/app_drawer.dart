import 'package:flutter/material.dart';
import 'package:letshelp/screens/Availablematerials.dart';
import 'package:letshelp/screens/evaluation.dart';
import 'package:letshelp/screens/homescreene.dart';
import 'package:letshelp/screens/myprofil.dart';

import '../screens/connect.dart';
import '../theme/colors.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors
                  .white, //This will change the drawer background to blue.
              //other styles
            ),
            child: Drawer(
                // backgroundColor: Color.fromRGBO(102, 44, 144, 1),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.03,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  

                      SizedBox(
                    width: MediaQuery.of(context).size.width*.05,
                      ),
                      Text(
                        "...فلنتساعد ",
                        style: TextStyle(
                            color: kTeal400,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ],
                  ),
                  SizedBox(
                                        height: MediaQuery.of(context).size.height*.03,

                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Divider(
                      color: kGrey400,
                      height: 1,
                    ),
                  ),
                  Container(
                      child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          color: kTeal400,
                        ),
                        title: Text(
                          'الصفحة الرئيسية',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: kTeal400,
                        ),
                        title: Text(
                          'الملف الشخصي',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfil()),
                          );
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.menu_book_outlined,
                          color: kTeal400,
                        ),
                        title: Text(
                          'المواد المتاحة',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AvailableMaterials()),
                          );
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: kTeal400,
                        ),
                        title: Text(
                          'تواصل معنا',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Connect()),
                          );
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.star,
                          color: kTeal400,
                        ),
                        title: Text(
                          'تقييم',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Evaluation()),
                          );
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.power_settings_new_sharp,
                          color: kTeal400,
                        ),
                        title: Text(
                          'تسجيل خروج',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed('/');
                        },
                      ),
                    ],
                  )),
                ]))));
  }
}
