import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:letshelp/screens/addnewprodact.dart';
import 'package:letshelp/screens/message.dart';
import 'package:letshelp/screens/myprofil.dart';

import '../theme/colors.dart';
import '../widgets/app_drawer.dart';
import '../widgets/product_card.dart';
import '../widgets/product_filtters_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _DetailesOrder() {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.NO_HEADER,
      headerAnimationLoop: false,
      animType: AnimType.BOTTOMSLIDE,
      title: '',
      desc: 'لا يوجد خدمات جديدة',
      buttonsTextStyle: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      btnOkColor: kTeal400,
      btnOkText: 'موافق',
      btnOkOnPress: () {},
    ).show();
  }

  int _propertyListIndex = 0;
  int _navigation = 0;

  void _goToListItemsProperty() => setState(() {
        _propertyListIndex = 1;
      });

  void _selectPage(int index) {
    setState(() {
      _propertyListIndex = 0;
    });
  }

  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    var container = ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: Container(
        color: kGrey501,
        height: MediaQuery.of(context).size.height * .08,
        child: ListView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(2.0),
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfil()));
              },
              icon: Icon(
                Icons.person_outline,
                size: 25,
                color: kTeal400,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .07),
            IconButton(
              onPressed: () {
                _DetailesOrder();
              },
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 25,
                color: kTeal400,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .07),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => goToAddNewProdact()));
                },
                icon: Icon(
                  Icons.add_circle,
                  size: 39,
                  color: kTeal400,
                )),
            SizedBox(width: MediaQuery.of(context).size.width * .07),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Message()));
              },
              icon: Icon(
                Icons.message_sharp,
                size: 25,
                color: kTeal400,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .07),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Icon(
                Icons.home_outlined,
                size: 25,
                color: kTeal400,
              ),
            )
          ],

          // to mark the tab we selected as an active tab and knowing who was selected
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTeal400,
        elevation: 3.0,
        title: Text(
          '...فلنتساعد',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          TextButton.icon(
            label: Text(
              "بحث",
              style: TextStyle(color: Colors.white),
            ),

            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            //color: Theme.of(context).primaryColorLight,
            onPressed: null,
          ),
        ],
      ),
      bottomNavigationBar: container,
      drawer: AppDrawer(),

      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Container(height: height * .16, child: ProductFiltersBar()),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  ProductCardWidget(),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  ProductCardWidget(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
            ],
          ),
        ),
      ),

//_____________________________________________________________
    );
  }
}
