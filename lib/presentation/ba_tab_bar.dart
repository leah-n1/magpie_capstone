import 'package:flutter/widgets.dart';

class BATabBAr extends StatefulWidget {
  final Size screenSize;
  const BATabBAr(
    {super.key,
    required this.screenSize
    });

  @override
  State<BATabBAr> createState() => _BATabBArState();
}

class _BATabBArState extends State<BATabBAr> {
  @override
  Widget build(BuildContext context) {
    return  Positioned(
                bottom: 0,
                right: 0,
                left:0,
                child: Container(
                height: widget.screenSize.height*.10,
                width: widget.screenSize.width,
                color: const Color.fromRGBO(255, 255, 255, 1),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [Positioned(
                      left:(widget.screenSize.width/2)-27.5,
                      top:-25,
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        boxShadow:const [BoxShadow(
                              color:Color.fromARGB(26,0,0,0),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 0,
                              ),BoxShadow(
                              color:Color.fromARGB(26,0,0,0),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 0,
                           )] ,
                            color: const Color.fromARGB(255, 241, 241, 243),
                          ),
                        ),
                    )],
                  ),
               ),
            );
  }
}