import 'package:flutter/widgets.dart';

class StackPositionedWidget extends StatefulWidget {
  const StackPositionedWidget({super.key});

  @override
  State<StackPositionedWidget> createState() => _StackPositionedWidgetState();
}

class _StackPositionedWidgetState extends State<StackPositionedWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    debugPrint('screenSize: $screenSize');
    return Stack(
            children: [
            Positioned(
              top: 0,
              left:0,
              right:0,
              child: Container(
                clipBehavior: Clip.none,
                padding: const EdgeInsets.only(left:0, right:0, top:4, bottom:4),
                height: screenSize.height *.10,
                width: screenSize.width,
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
                ),

            Positioned(
                top:(screenSize.height * 0.1),
                bottom:(screenSize.height * 0.1),
                left:0,
                right:0,
                child:Container(
                  height: screenSize.height,
                  width: screenSize.width,
                  color: const Color.fromRGBO(228,229,236,1),
                  padding: const EdgeInsets.fromLTRB(18,32,18,32),
                  child: Column(
                    children: [
                      Container(
                        height:159,
                        width: 336,
                        decoration: BoxDecoration(
                             color: const Color.fromRGBO(254, 254, 254,1),
                             borderRadius: BorderRadius.circular(25),
                             boxShadow:const [BoxShadow(
                              color:Color.fromARGB(26,0,0,0),
                              offset: Offset(0, 4),
                              blurRadius: 15,
                              spreadRadius: 0,
                           )] ,
                          ),
                        ),
                      const SizedBox(height:20),
                      Container(
                        height:117,
                        width: 336,
                        decoration: BoxDecoration(
                             color: const Color.fromRGBO(254, 254, 254,1),
                             borderRadius: BorderRadius.circular(25),
                             boxShadow:const [BoxShadow(
                              color:Color.fromARGB(26,0,0,0),
                              offset: Offset(0, 4),
                              blurRadius: 15,
                              spreadRadius: 0,
                            )] ,
                          ),
                        ),
                      const SizedBox(height:16),
                      const SizedBox(
                        height: 20,
                        width:336,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:[
                           Text('Transactions', style: TextStyle(
                            color:Color.fromARGB(255, 5, 5, 5),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height:0,
                            )),
                          SizedBox(width:20),
                           Text('1 WEEK', style: TextStyle(
                            color:Color.fromARGB(255, 5, 5, 5),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 0,
                            ))
                           ]),
                        ),
                      const SizedBox(height:16),
                      GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          ),
                        itemBuilder: (context,index){
                          return Container(
                            height: 95,
                            width: 331,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255,1),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow:const [BoxShadow(
                                color:Color.fromARGB(26,0,0,0),
                                offset: Offset(0, 4),
                                blurRadius: 10,
                                spreadRadius: 0,
                            )] ,
                          ),
                        );
                        })
                      ]),
                    )),
               
             Positioned(
                bottom: 0,
                right: 0,
                left:0,
                child: Container(
                height: screenSize.height*.10,
                width: screenSize.width,
                color: const Color.fromARGB(255, 153, 176, 162)
               ),
            ),
          ]);
      }
}