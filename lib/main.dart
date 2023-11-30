import 'package:flutter/widgets.dart';

import 'package:flutter_capstone/screens/home_screen.dart';
import 'custom widgets/ba_safe_space.dart';


void main() {
  runApp(const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return const Directionality(textDirection: TextDirection.ltr,
      child: HomeScreen(),
    );
  }
}

 