import 'package:businer/provider/location.dart';
import 'package:businer/screens/googlemaps.dart';
import 'package:businer/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => LocationProvider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: LoginScreen(),
       routes: <String, WidgetBuilder>{
        '/googlemap': (context) => GoogleMaps(),

        // '/editPet': (context) => EditPetProfile()
      },
    );
  }
}
