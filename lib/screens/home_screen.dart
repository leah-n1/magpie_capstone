import 'package:flutter/widgets.dart';
import 'package:flutter_capstone/custom%20widgets/ba_app_bar.dart';
import 'package:flutter_capstone/custom%20widgets/ba_safe_space.dart';
import 'package:flutter_capstone/custom%20widgets/ba_scaffold.dart';
import 'package:flutter_capstone/custom%20widgets/ba_tab_bar.dart';
import 'package:flutter_capstone/screens/home_app_body.dart';





class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255,255,255,255),
      child: Align(
        alignment: Alignment.topLeft,
        child: BASafeSpace(
          child: BAScaffold(
            appBar: BAAppBar(
              screenSize: screenSize,
              backgroundColor:  const Color(0xFFFDFEFF),
              leadingWidget: 
                    Container(
                      height: 100,
                      width:  100,
                        child: Image.asset('assets/images/Menu.png'),
                    ),
              titleWidget: const Center(
                        child: Text('Fitaka',style:TextStyle(
                          color: Color.fromARGB(255, 4, 4, 4),
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          )),
                        ),
              trailingWidget: Container(
                      margin: const EdgeInsets.fromLTRB(0,0,8,0),
                      height: 40,
                      width:  40,
                      decoration:BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color.fromRGBO(220,101,101,1),
                      width: 2,),
                      image: const DecorationImage( 
                        fit: BoxFit.cover,
                        image: NetworkImage('https://source.unsplash.com/random?sig=1'),
                      ),),
                    ),),
            body: BABodyWidget(screenSize: screenSize),
            bottomTabBar: BATabBar(
                screenSize: screenSize, 
                backgroundColor: const Color(0xFFFDFEFF),
                leadingWidget: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFFDFEFF),
                      child: Image.asset('assets/images/wallet.png'),
                ),
                secondWidget: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFFDFEFF),
                      child: Image.asset('assets/images/world.png'),
                ),
                thirdWidget: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFFDFEFF),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints innerconstraints){
                        return Stack(
                          clipBehavior: Clip.none,
                          children:[Positioned(
                          top:-40,
                          left:2,
                          child: Container(
                            height: 56,
                            width: 56,
                            decoration: const BoxDecoration(
                              gradient: RadialGradient(colors: 
                              [Color(0xFF42769A),
                               Color(0xFC99BBD2),
                                Color(0xE942769A),
                                 Color(0x9342769A),
                                  Color(0x0042769A)]),
                              
                              shape: BoxShape.circle,
                              image:DecorationImage(
                                image: AssetImage('assets/images/donate.png')
                                )),

                             
                             
                            
                          ))]);
                        }),
                      ),
                  
                fourthWidget:Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFFDFEFF),
                      child: Image.asset('assets/images/barchart.png')
                    ),
                  
                endwidget: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFFDFEFF),
                      child: Image.asset('assets/images/mdi_favorite_border.png'),
                    ),
                  )))
          ));
  }}


  // 'assets/images/barchart.png'