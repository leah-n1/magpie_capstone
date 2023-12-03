
import 'package:flutter/widgets.dart';
import 'package:flutter_capstone/custom%20widgets/ba_tab_bar.dart';
import '../custom widgets/ba_app_bar.dart';
import '../custom widgets/ba_safe_space.dart';
import '../custom widgets/ba_scaffold.dart';
import '';
import '../custom widgets/custom_tabbar.dart';
import '../custom widgets/custom_transaction_details.dart';
import '../models/transaction_model.dart';







class TransactionDetailScreen extends StatefulWidget {
  final Transaction transactiondetails;
  const TransactionDetailScreen({super.key, required this.transactiondetails});

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
      color: const Color(0xFFFDFEFF),
      height: screenSize.height,
      child: Align(
        alignment: Alignment.topLeft,
        child: BASafeSpace(
          child: BAScaffold(
            appBar: BAAppBar(
              screenSize: screenSize,
              backgroundColor:  const Color(0xFFFDFEFF),
              leadingWidget: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                    },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin:EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
                      width: screenSize.width * 0.10,
                      height: 25,
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        'assets/images/back.png',
                        fit: BoxFit.contain,
                      ),
                     ),
                    Text(widget.transactiondetails.type,
                      style: const TextStyle(
                      color: Color.fromARGB(255, 11, 12, 12),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      ),),
                    ],)),
                  ),
            body: CustomTransactionDetails(
                    screenSize: screenSize, 
                    transaction:widget.transactiondetails),
            bottomTabBar: BATabBar(screenSize: screenSize),
                    ),
                        ),
                        ));
                    
                    }
                  }

