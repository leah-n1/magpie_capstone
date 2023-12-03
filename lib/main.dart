import 'package:flutter/widgets.dart';

import 'package:flutter_capstone/screens/home_screen.dart';



void main() {
  runApp(const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return Navigator(
    //   onGenerateRoute: (routeSettings) {
    //     return PageRouteBuilder(
    //           settings: routeSettings,
    //           pageBuilder: (context, animation1, animation2) {
    //             return const HomeScreen();
    //           });

    //   }
    //   ,
    // );
  
    return const MyApp();
  }
}

 