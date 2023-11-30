import 'package:flutter/widgets.dart';

import 'ba_spacer.dart';


class BATabBar extends StatefulWidget {
  final Size screenSize;
  final Color backgroundColor;
  final Widget? leadingWidget;
  final Widget? secondWidget;
  final Widget? thirdWidget;
  final Widget? fourthWidget;
  final Widget? endwidget;

  const BATabBar({
    super.key,
    required this.screenSize,
    this.backgroundColor = const Color.fromARGB(255, 243, 243, 243),
    this.leadingWidget,
    this.secondWidget,
    this.thirdWidget,
    this.fourthWidget,
    this.endwidget,
  });

  @override
  State<BATabBar> createState() => _BATabBarState();
}

class _BATabBarState extends State<BATabBar> {
  @override
  Widget build(BuildContext context) {
    var size = widget.screenSize;
    return Container(
      height: size.height * 0.10,
      width: 400,
      color: widget.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.leadingWidget ?? Container(),
          widget.secondWidget ?? Container(),
          widget.thirdWidget ?? Container(),
          widget.fourthWidget ?? Container(),
          widget.endwidget ?? Container(),
        ],
      ),
    );
  }
}