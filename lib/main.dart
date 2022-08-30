import 'package:flutter/material.dart';

import 'package:foodtech/screens/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (BuildContext context) => const HomePageClass(),
    },
  ));
}
