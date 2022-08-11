import 'package:flutter/material.dart';

import '../theme/colors.dart';
class PrivatMessage extends StatefulWidget {
  const PrivatMessage({ Key? key }) : super(key: key);

  @override
  State<PrivatMessage> createState() => _PrivatMessageState();
}

class _PrivatMessageState extends State<PrivatMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     backgroundColor: kTeal400,
        title:   Text(
                  "أنس التدمري ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20),
                )

      ),
      
    );
  }
}