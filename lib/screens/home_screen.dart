import 'package:flutter/widgets.dart';
import 'package:flutter_capstone/custom%20widgets/ba_app_bar.dart';
import 'package:flutter_capstone/custom%20widgets/ba_scaffold.dart';
import 'package:flutter_capstone/custom%20widgets/ba_tab_bar.dart';
import 'package:flutter_capstone/screens/home_app_body.dart';
import 'package:flutter_capstone/utilities/app_body..dart';

// import '../custom_widgets/ba.safe_space.dart';
import '../utilities/ba.safe_space.dart';


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
                      color: const Color.fromARGB(255, 190, 62, 62),
                      height: 100,
                      width:  100,
                    ),
              titleWidget: const Center(
                child: Text('Fitaka',style:TextStyle(
                        color: Color.fromARGB(255, 4, 4, 4),
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      )),
                    ),
              trailingWidget: Container(
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
                      ),
                      ),
                    ),
                body: MPBodyWidget(
                // screenSize: screenSize,
                ),
                bottomTabBar: BATabBAr(
                screenSize: screenSize,
                ),
              
             
              
            ),
          ),
        ),
    );
    
  }
}