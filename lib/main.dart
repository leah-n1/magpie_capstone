import 'package:flutter/widgets.dart';
import 'package:flutter_capstone/screens/home_app_body.dart';
// import 'package:flutter_capstone/custom_widgets/ba.safe_space.dart';
import 'package:flutter_capstone/utilities/app_body..dart';

import 'custom widgets/ba_safe_space.dart';

// import 'utilities/ba.safe_space.dart';

void main() {
  runApp(const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   var screensize = MediaQuery.of(context).size;
    return const Directionality(textDirection: TextDirection.ltr,
      child: BASafeSpace(
        child: MPBodyWidget(),
      ),
    );
  }
}

 