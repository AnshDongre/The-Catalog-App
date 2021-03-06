import 'package:catalouge/cors/store.dart';
import 'package:catalouge/pages/cartpage.dart';
import 'package:catalouge/widgets/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:catalouge/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
