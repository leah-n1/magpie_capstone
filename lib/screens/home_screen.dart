import 'package:flutter/widgets.dart';
import 'package:flutter_capstone/custom%20widgets/ba_app_bar.dart';

import 'package:flutter_capstone/custom%20widgets/ba_scaffold.dart';
import 'package:flutter_capstone/custom%20widgets/ba_tab_bar.dart';
import 'package:flutter_capstone/screens/home_app_body.dart';

import '../custom widgets/ba_safe_space.dart';
import '../custom widgets/custom_tabbar.dart';





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
      color: const Color(0xFFFDFEFF),
      height: screenSize.height,
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
                      margin: const EdgeInsets.fromLTRB(0,10,60,10),
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
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/flash.png'),
                      ),),
                    ),),
            body: BABodyWidget(screenSize: screenSize),
            bottomTabBar: CustomTabBar(screenSize: screenSize)),
        )
          ),
    );
  }}




  