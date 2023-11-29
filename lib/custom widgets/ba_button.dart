
// //****in progress**/

// import 'package:flutter/widgets.dart';

// class BAButton extends StatelessWidget {
//   final Color backgroundcolor;
//   final Widget icon;
//   final String? title;
//   final Color? titlecolor;

//   const BAButton({
//    super.key,
//    this.backgroundcolor=const Color.fromRGBO(255, 255, 255, 1),
//    required this.icon,
//    this.title,
//    this.titlecolor= const Color.fromARGB(255, 14, 13, 13),
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 64,
//       width: 48,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             flex: 3,
//             child: Container(
//               child: icon,
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               child: Text(
//                 title,style: TextStyle(
//                   color: titlecolor,
//                 )
//               )
//            ))
//         ],

//       )
//     );
    
//   }
// }