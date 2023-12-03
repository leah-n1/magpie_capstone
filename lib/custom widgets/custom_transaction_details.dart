import 'package:flutter/widgets.dart';
import 'package:flutter_capstone/models/transaction_model.dart';
import '../screens/transaction_details.dart';

class CustomTransactionDetails extends StatelessWidget {
  const CustomTransactionDetails({
    super.key,
    required this.screenSize,
    required this.transaction,
  });

  final Size screenSize;
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        height: screenSize.height,
        width:screenSize.width,
        padding: const EdgeInsets.fromLTRB(8,16,16,8),
        color:  const Color(0xFFE4E4EB),
        child: Column(
          children: [
            Container(
            height: 190,
            width: 340,
            padding: const EdgeInsets.fromLTRB(10,20,10,23),
            decoration: ShapeDecoration(
              color: const Color(0xFFFDFEFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    height: 50,
                    width: 50,
                    color: transaction.type == "Debit" 
                              ? const Color.fromRGBO(234,140,151, 1) : 
                              const Color.fromRGBO(13,170,57,1),
                    margin: const EdgeInsets.fromLTRB(10,0,0,25),
                    child: transaction.type == "Debit" 
                        ? Image.asset('assets/images/arrow_down.png') :
                          Image.asset('assets/images/arrow_up.png')
                            ),
                    const SizedBox(width:8),
                    Text(transaction.description,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(255, 11, 11, 11)),)
                    ],
                ),
                  Expanded(
                    flex: 2,
                    child: Container(
                    height: 68,
                      width: 50,
                      color: const Color.fromRGBO(254, 254, 254,1),
                      margin: const EdgeInsets.fromLTRB(8,4,8,4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                          height:24,
                          width:36,
                          color: const Color.fromRGBO(254, 254, 254,1),
                          margin: const EdgeInsets.all(1),
                          child: Text(
                            'Amount: PHP ${transaction.amount}',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 2, 1, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 20,),),
                          ),
                          Container(
                          height:14,
                          color: const Color.fromRGBO(254, 254, 254,1),
                          margin: const EdgeInsets.all(1),
                          child: Text(
                            'Date:  ${transaction.date}',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 2, 1, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,),),
                          ),
                          
                          Container(
                          height:14,
                          color:const Color.fromRGBO(254, 254, 254,1),
                          margin: const EdgeInsets.all(1),
                          child: Text(
                            transaction.type,
                            style:  TextStyle(
                              color: transaction.type == "Debit" 
                              ? const Color.fromRGBO(234,140,151, 1) : 
                              const Color.fromRGBO(13,170,57,1),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,),),
                             ),
                          ],
                        ),
                      ),
                    ),]
                  ),
                ),],
              ),),
              ]);
  }
}