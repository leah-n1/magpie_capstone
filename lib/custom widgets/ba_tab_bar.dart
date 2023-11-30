import 'package:flutter/widgets.dart';

class BATabBAr extends StatefulWidget {
  final Size screenSize;
  final Color backgroundcolor;
  final Widget? content;
  final Widget? display;

  const BATabBAr(
    {super.key,
    required this.screenSize, 
    required this.backgroundcolor,
    this.content,
    this.display,
    });

  @override
  State<BATabBAr> createState() => _BATabBArState();
}class _BATabBArState extends State<BATabBAr> {

  Widget build(BuildContext context) {
    return Container(
      height: widget.screenSize.height * 0.10,
      color: widget.backgroundcolor,
    );
  }
}