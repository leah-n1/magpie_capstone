import 'package:flutter/widgets.dart';

class BAappBody extends StatefulWidget {
  const BAappBody({super.key});

  @override
  State<BAappBody> createState() => _BAappBodyState();
}

class _BAappBodyState extends State<BAappBody> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width ,
      height: screenSize.height,
      color: const Color.fromARGB(255, 195, 30, 30),
      
    );
  }
}