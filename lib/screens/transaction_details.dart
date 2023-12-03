
import 'package:flutter/widgets.dart';
import '../custom widgets/ba_app_bar.dart';
import '../custom widgets/ba_safe_space.dart';
import '../custom widgets/ba_scaffold.dart';
import '';







class TransactionDetailScreen extends StatefulWidget {
  final String type;
  const TransactionDetailScreen({super.key, required this.type});

  @override
  State<TransactionDetailScreen> createState() =>
      _TransactionDetailScreenState();
}

class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // final transactiondetails = ModalRoute.of(context)!.settings.arguments as Transaction;
   
    return Container(
      color: const Color(0xFF939393),
      child: BASafeSpace(
        child: BAScaffold(
          appBar: BAAppBar(
            screenSize: MediaQuery.of(context).size,
            backgroundColor: const Color(0xFFFDFEFF),
            leadingWidget: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                  },
              child: Container(
                margin:
                    EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
                width: screenSize.width * 0.10,
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  'assets/images/back.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            titleWidget: Text('${widget.type}',
               style: const TextStyle(
                color: Color.fromARGB(255, 11, 12, 12),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          body: Container(
            color: const Color(0xFFFDFEFF),
            child: Text(
              "Value from HomeScreen",
              style: const TextStyle(color: Color.fromARGB(255, 6, 6, 6)),
            ),
          ),
         
          ),
        ),
      );
  
  }
}