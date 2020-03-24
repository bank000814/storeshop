import 'dart:collection';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapstore/login.dart';
import 'package:mapstore/search.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'supermarket'),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/login-page': (context) => PageLogin(),
        '/search-page': (context) => PageSearch(),
      },
    );
  }
}
