import 'package:flutter/material.dart';
import 'package:flutter_web_app/views/widgets/custom_text.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: 'Drivers Page'),
    );
  }
}
