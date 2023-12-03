import 'package:flutter/widgets.dart';
import 'package:get/utils.dart';
import 'ba_spacer.dart';


class BAAppBar extends StatefulWidget {
  final Size screenSize;
  final Color backgroundColor;
  final Widget? leadingWidget;
  final Widget? titleWidget;
  final Widget? trailingWidget;

  const BAAppBar({
    super.key,
    required this.screenSize,
    this.backgroundColor = const Color.fromARGB(255, 243, 243, 243),
    this.leadingWidget,
    this.titleWidget,
    this.trailingWidget,
  });

  @override
  State<BAAppBar> createState() => _BAAppBarState();
}

class _BAAppBarState extends State<BAAppBar> {
  @override
  Widget build(BuildContext context) {
       var size = widget.screenSize;
    return Container(
      height: size.height *10,
      width: 400,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            widget.leadingWidget ?? Container(),
            widget.titleWidget ?? Container(),
            const BASpacer(),
            widget.trailingWidget ?? Container(),
          ],
        
      ),
    );
  }
}
