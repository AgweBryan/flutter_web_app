import 'package:flutter/cupertino.dart';
import 'package:flutter_web_app/constants/controllers.dart';
import 'package:flutter_web_app/routes/router.dart';
import 'package:flutter_web_app/routes/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
