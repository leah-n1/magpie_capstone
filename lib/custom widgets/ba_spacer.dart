import 'package:flutter/widgets.dart';

class BASpacer extends StatelessWidget {
  final int flex;

  const BASpacer({super.key, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Container(),
    );
  }
}