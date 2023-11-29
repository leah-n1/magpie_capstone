// import 'package:flutter/widgets.dart';

// import '../custom widgets/ba_app_bar.dart';
// import '../custom widgets/ba_scaffold.dart';
// import '../custom_widgets/ba.safe_space.dart';



// class TransactionDetailScreen extends StatefulWidget {
//   final String name;
//   const TransactionDetailScreen({super.key, required this.name});

//   @override
//   State<TransactionDetailScreen> createState() =>
//       _TransactionDetailScreenState();
// }

// class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return Container(
//       color: const  Color.fromRGBO(228, 229, 236, 1),
//       child: BASafeSpace(
//         child: BAScaffold(
//           appBar: BAAppBar(
//             screenSize: MediaQuery.of(context).size,
//             backgroundColor: const Color(0xFFFDFEFF),
//             leadingWidget: GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Container(
//                 margin:
//                     EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
//                 width: screenSize.width * 0.10,
//                 padding: const EdgeInsets.all(5),
//                 child: Image.asset(
//                   'assets/images/menu_back.png',
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//             titleWidget: Text(
//               'Transaction Detail Screen',
//               style: TextStyle(
//                 color: AppColors.dark,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           body: Container(
//             color: AppColors.white,
//             child: Text(
//               "Value from HomeScreen: ${widget.name}",
//               style: TextStyle(color: AppColors.dark),
//             ),
//           ),
          
//         ),
//       ),
//     );
//   }
// }