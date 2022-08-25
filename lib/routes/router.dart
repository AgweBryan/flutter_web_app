import 'package:flutter/material.dart';
import 'package:flutter_web_app/routes/routes.dart';
import 'package:flutter_web_app/views/pages/authentication/authentication_page.dart';
import 'package:flutter_web_app/views/pages/clients/clients_page.dart';
import 'package:flutter_web_app/views/pages/drivers/drivers_page.dart';
import 'package:flutter_web_app/views/pages/overview/overview_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(OverviewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    case authenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
