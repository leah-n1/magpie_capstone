import 'package:flutter/widgets.dart';

class BAAppBar extends StatefulWidget {
  final Size screenSize;
 const BAAppBar(
  {super.key,
  required this.screenSize});

  @override
  State<BAAppBar> createState() => _BAAppBarState();
}

class _BAAppBarState extends State<BAAppBar> {
  @override
  Widget build(BuildContext context) {
    var size= widget.screenSize;
    return Positioned(
              top: 0,
              left:0,
              right:0,
              child: Container(
                clipBehavior: Clip.none,
                padding: const EdgeInsets.only(left:0, right:0, top:4, bottom:4),
                height: size.height *.10,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 254, 254, 254),
                  boxShadow: [BoxShadow(color: Color.fromARGB(2, 48, 48, 185))]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 190, 62, 62),
                      height: 100,
                      width:  100,
                    ),
                    const Text('Fitaka',style:TextStyle(
                      color: Color.fromARGB(255, 4, 4, 4),
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    )),
                    Container(
                       height: 40,
                      width:  40,
                      decoration:BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color.fromRGBO(220,101,101,1),
                      width: 2,),
                      image: const DecorationImage( 
                        fit: BoxFit.cover,
                        image: NetworkImage('https://source.unsplash.com/random?sig=1'),
                      ),
                      )
                      )],
                    ),
                  ),
                );
  }
}