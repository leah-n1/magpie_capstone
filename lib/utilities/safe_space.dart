import 'package:flutter/widgets.dart';

class BASafeSpace extends StatelessWidget {
  final Widget child;
  const BASafeSpace({
    super.key,
    required this.child});

  @override
  Widget build(BuildContext context) {
    final EdgeInsets safeArea = MediaQuery.of(context).padding;
    return Padding(
      padding: safeArea,
      child: child,
    );
  }
}