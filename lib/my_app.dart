import 'package:flutter/widgets.dart';
import 'screens/home_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      color: const Color.fromARGB(255, 255, 255, 255),
      builder: (context, child) {
        return Navigator(
          // onGenerateInitialRoutes: (navigator, initialRoute) {
          //   print("${navigator} , ${initialRoute}");
          //   return [
          //     PageRouteBuilder(
          //       settings: const RouteSettings(name: '/'),
          //       pageBuilder: (context, animation1, animation2) {
          //         return const HomeScreen();
          //       },
          //     ),
          //   ];
          // },
          onGenerateRoute: (routeSetting) {
            print(routeSetting);
            return PageRouteBuilder(
              settings: routeSetting,
              pageBuilder: (context, animation1, animation2) {
                return const HomeScreen();
              },
            );
          },
        );
      },
    );
  }
}