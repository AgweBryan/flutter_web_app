import 'package:flutter/material.dart';
import 'package:flutter_web_app/views/pages/overview/widgets/info_card.dart';
import 'package:flutter_web_app/views/pages/overview/widgets/info_card_small.dart';

class OverViewCardSmallScreen extends StatelessWidget {
  const OverViewCardSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            isActive: true,
            title: 'Rides in progress',
            value: '7',
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '17',
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Cancelled delivered',
            value: '3',
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
