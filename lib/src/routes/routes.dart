import 'package:componentes/src/pages/covid_page.dart';
import 'package:componentes/src/pages/dashboard_Page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder>{
    '/'      : (BuildContext context) => DashBoard(),
    'covid'   : (BuildContext context) => CovidPage(),
  };
}
