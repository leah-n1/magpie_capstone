
import 'package:flutter/widgets.dart';
import 'package:flutter_capstone/utilities/app.dart';
import 'custom widgets/ba_safe_space.dart';
// import 'custom_widgets/ba_safe_space.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return WidgetsApp(
    color: const Color.fromARGB(255,255,255,255),
    builder: (context, child){
     return  const Directionality(
      textDirection: TextDirection.ltr,
        child: BASafeSpace(
          child: BAappBody(),
        )
      );}
   );
  }
}