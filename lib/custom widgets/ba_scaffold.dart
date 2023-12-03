
import 'package:flutter/widgets.dart';
import 'package:flutter_capstone/custom%20widgets/ba_safe_space.dart';


class BAScaffold extends StatefulWidget {

  final Widget? appBar;
  final Widget? body;
  final Widget? bottomTabBar;

  const BAScaffold({
    Key? key,
   this.appBar,
    this.body,
    this.bottomTabBar,
  }) : super(key: key);

  @override
  State<BAScaffold> createState() => _BAScaffoldState();
}

class _BAScaffoldState extends State<BAScaffold> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    debugPrint('screenSize: $screenSize');
    return Container(
      color: const Color.fromARGB(255, 217, 217, 217),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints innerConstraints) {
          debugPrint(
              'Inner constraints Size: ${innerConstraints.maxHeight} -  ${innerConstraints.maxWidth}');
          return Stack(
            clipBehavior: Clip.none,
            children: [
              widget.body == null
                  ? Positioned(
                      top: (screenSize.height * 0.10),
                      bottom: widget.bottomTabBar == null
                          ? 0.0
                          : (screenSize.height * 0.10),
                      left: 0,
                      right: 0,
                      child: Container(
                        color: const Color.fromARGB(255,255,255,255),
                        height: screenSize.height * 0.8,
                        width: screenSize.width,
                      ),
                    )
                  : 
                  Positioned(
                      top: (screenSize.height * 0.10),
                      bottom: widget.bottomTabBar == null
                          ? 0.0
                          : (screenSize.height * 0.10),
                      left: 0,
                      right: 0,
                      child: widget.body ?? Container(),
                    ),
              widget.appBar == null
                  ? Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: screenSize.height * .90,
                      child: Container(
                        color: const Color.fromARGB(255,255,255,255),
                        height: screenSize.height * 0.10,
                        width: screenSize.width,
                      ),
                    )
                  : 
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: SafeArea(
                        child: Container(
                          clipBehavior: Clip.none,
                          color: const Color.fromARGB(255,255,255,255),
                          height: screenSize.height * 0.10,
                          width: screenSize.width,
                          child: widget.appBar ?? Container(),
                        ),
                      ),
                    ),
              widget.bottomTabBar == null
                  ? Container()
                  :
                   Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: const Color.fromARGB(255,255,255,255),
                        height: screenSize.height * 0.10,
                        width: screenSize.width,
                        child: widget.bottomTabBar ?? Container(),
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }
}