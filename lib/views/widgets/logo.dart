import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 14,
      ),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
            image: AssetImage('assets/favicon.png'), fit: BoxFit.cover),
      ),
    );
  }
}
