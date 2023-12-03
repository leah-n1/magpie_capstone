
import 'package:flutter/widgets.dart';

import 'ba_tab_bar.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return BATabBar(
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
          );
  }
}