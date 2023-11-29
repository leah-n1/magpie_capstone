import 'dart:convert';

import 'package:flutter/widgets.dart';

import '../models/transaction_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

// import '../models/transaction.dart';
// import 'dart:convert' as convert;


class StackPositionedWidget extends StatefulWidget {
  const StackPositionedWidget({super.key});

  @override
  State<StackPositionedWidget> createState() => _StackPositionedWidgetState();
}

class _StackPositionedWidgetState extends State<StackPositionedWidget> {


List<Transaction> listTransaction = [
  Transaction(transactionId: 'empty.', date: '0', type:'0', amount: 0, description: '0')
];

Future<List<Transaction>> getTransaction() async {
  var url = Uri.parse(
    "https://demo9021501.mockable.io/account_details");

  var response = await http.get(url);
  List<Transaction> tempList= [];

if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status');
  }}

  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    debugPrint('screenSize: $screenSize');
   
    // var listTransaction=[
    // Transaction(
    //   transactionId: "T1001",
    //   date: "2023-11-20",
    //   type: "Debit",
    //   amount: 200.00,
    //   description: "Grocery Shopping"),
    // Transaction(
    //   transactionId: "T1002",
    //   date: "2023-11-18",
    //   type: "Credit",
    //   amount: 500.00,
    //   description: "Salary Deposit"),
    // Transaction(
    //   transactionId: "T1003",
    //   date: "2023-11-15",
    //   type: "Debit",
    //   amount: 150.00,
    //   description: "Utility Bill Payment"),
    // Transaction(
    //   transactionId: "T1004",
    //   date: "2023-11-12",
    //   type: "Credit",
    //   amount: 300.00,
    //   description: "Refund from Online Shopping"),
    // Transaction(
    //   transactionId: "T1005",
    //   date: "2023-11-10",
    //   type: "Debit",
    //   amount:  100.00,
    //   description: "Restaurant Meal"),
    // ];


  didTap(Transaction listTransaction){
var listTransaction = getTransaction();
 for ( var item in listTransaction) {
    print(item.transactionId);
  }
}

    return Stack(
            children: [
            Positioned(
                top:(screenSize.height * 0.1),
                bottom:(screenSize.height * 0.1),
                left:0,
                right:0,
                child:Container(
                  clipBehavior: Clip.none,
                  height: screenSize.height,
                  width: screenSize.width,
                  color: const Color.fromRGBO(228,229,236,1),
                  padding: const EdgeInsets.fromLTRB(18,16,18,0),
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
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
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           mainAxisSize: MainAxisSize.max,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Expanded(
                               flex: 3,
                               child: Container(
                               height: 120,
                               width:50,
                               color: const Color.fromARGB(255,255,255,255),
                               margin: const EdgeInsets.fromLTRB(14,4,8,4),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 mainAxisSize: MainAxisSize.max,
                                 children: [
                                   Container(
                                     height: 50,
                                     width: 250, 
                                     color: const Color.fromARGB(255,255,255,255),
                                     margin: const EdgeInsets.fromLTRB(1,1,1,0),
                                     padding: const EdgeInsets.fromLTRB(0,2,0,2),
                                     child: const Text(
                                       'PHP',
                                       style:TextStyle(
                                         fontSize:36,
                                         fontWeight: FontWeight.w600,
                                         color: Color.fromARGB(255, 10, 10, 10)),),
                                   ),
                                   Container(
                                    height: 25,
                                    width:250,
                                     color: const Color.fromARGB(255,255,255,255),
                                     margin: const EdgeInsets.fromLTRB(1,1,1,0),
                                     padding: const EdgeInsets.fromLTRB(0,4,0,4),
                                     child: const Text('Available Balance',
                                     style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255,10,10,10)
                                     ),)
                                   ),
                                   Container( 
                                    height: 14,
                                    width: 250,
                                     color: const Color.fromARGB(255,255,255,255),
                                     margin: const EdgeInsets.fromLTRB(1,1,1,0),
                                     padding: const EdgeInsets.fromLTRB(0,2,0,2),
                                     child: const Text('Account Name: ',
                                     style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255,10,10,10)
                                     ),)
                                   ),
                                   Container( 
                                    height: 14,
                                    width:250,
                                     color: const Color.fromARGB(255,255,255,255),
                                     margin: const EdgeInsets.fromLTRB(1,12,1,0),
                                     padding: const EdgeInsets.fromLTRB(0,2,0,2),
                                     child: const Text('Account Number: ',
                                     style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255,10,10,10)
                                     ),)
                                   ),
                                   ],
                                 ),
                               ),
                             ),
                             Expanded(
                               flex:1,
                               child: Container(
                               height: 120,
                               width:30,
                               color: const Color.fromARGB(255, 227, 180, 180),
                               margin: const EdgeInsets.fromLTRB(0,16,14,16),
                               ),
                             ),
                           ],
                          ),

                         ),
                       const SizedBox(height:16),
                       Container(
                         height:117,
                         width: 336,
                         decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 171, 43, 43),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow:const [BoxShadow(
                               color:Color.fromARGB(26,0,0,0),
                               offset: Offset(0, 4),
                               blurRadius: 15,
                               spreadRadius: 0,
                             )] ,
                           ),
                          child:GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5
                            ), 
                            itemBuilder: (context, index){
                              return Container();
                            })
                         ),
                       const SizedBox(height:16),
                       Container(
                         height: 20,
                         width: 336,
                         margin: const EdgeInsets.fromLTRB(8,0,8,0),
                         child: const Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Text('Transactions', style: TextStyle(
                             color:Color.fromARGB(255, 5, 5, 5),
                             fontSize: 15,
                             fontWeight: FontWeight.w600,
                             height:0,
                             )),
                            Text('1 WEEK', style: TextStyle(
                             color:Color.fromARGB(255, 5, 5, 5),
                             fontSize: 15,
                             fontWeight: FontWeight.w600,
                             height: 0,
                             ))
                            ]),
                         ),
                        
                         SizedBox(
                           width:336,
                           height:220,
                           child: Container(
                           width: 336,
                           height: 220,
                           margin: const EdgeInsets.fromLTRB(0,0,0,4),
                           color:  const Color.fromRGBO(228,229,236,1),
                           child: ListView.builder(
                             itemCount: 5,
                             shrinkWrap: true,
                             scrollDirection: Axis.vertical,
                             itemBuilder: (context,index){
                               return GestureDetector(
                                 onTap: ()=>didTap(listTransaction[index]),
                                 child: Container(
                                   width: 336,
                                   height: 95,
                                   decoration: BoxDecoration(
                                     color:const Color.fromRGBO(254, 254, 254,1),
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   
                                   margin: const EdgeInsets.fromLTRB(0,0,0,15),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     mainAxisSize: MainAxisSize.max,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Expanded(
                                         flex: 1,
                                         child: Container(
                                         height: 50,
                                         width: 50,
                                         color: const Color.fromARGB(255, 227, 180, 180),
                                         margin: const EdgeInsets.fromLTRB(10,20,0,25)
                                       )),
                                       Expanded(
                                         flex: 4,
                                         child: Container(
                                          height: 68,
                                           width: 50,
                                           color: const Color.fromARGB(255, 181, 62, 62),
                                           margin: const EdgeInsets.fromLTRB(8,4,8,4),
                                           child: Column(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             crossAxisAlignment: CrossAxisAlignment.stretch,
                                             children: [
                                               Container(
                                               height:18,
                                               color: const Color.fromRGBO(254, 254, 254,1),
                                               margin: const EdgeInsets.all(1),
                                               child: Text(
                                                 'Amount: PHP ${listTransaction[index].amount}',
                                                  style: const TextStyle(
                                                   color: Color.fromARGB(255, 2, 1, 1),
                                                   fontWeight: FontWeight.w700,
                                                   fontSize: 15,),),
                                               ),
                                               Container(
                                               height:14,
                                               color: const Color.fromRGBO(254, 254, 254,1),
                                               margin: const EdgeInsets.all(1),
                                                child: Text(
                                                 'Date:  ${listTransaction[index].date}',
                                                 style: const TextStyle(
                                                   color: Color.fromARGB(255, 2, 1, 1),
                                                   fontWeight: FontWeight.w600,
                                                   fontSize: 12,),),
                                               ),
                                               Container(
                                               height:14,
                                               color: const Color.fromRGBO(254, 254, 254,1),
                                               margin: const EdgeInsets.all(1),
                                               child: Text(
                                                 'Description: ${listTransaction[index].description}',
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
                                                 listTransaction[index].type,
                                                 style: const TextStyle(
                                                   // color: listTransaction[index].type == "Debit" 
                                                   // ? const Color.fromRGBO(234,140,151, 1) : 
                                                   //  const Color.fromRGBO(13,170,57,1),
                                                   fontWeight: FontWeight.w600,
                                                   fontSize: 12,),),
                                               ),
                                              ],
                                           ),
                                         ),
                                       ),]
                                     ),),
                               );}
                                 )))
                               ],),
                    )),
                  
            
            Positioned(
                bottom: 0,
                right: 0,
                left:0,
                child: Container(
                height: screenSize.height*.10,
                width: screenSize.width,
                color: const Color.fromRGBO(255, 255, 255, 1),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [Positioned(
                      left:(screenSize.width/2)-27.5,
                      top:-25,
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        boxShadow:const [BoxShadow(
                              color:Color.fromARGB(26,0,0,0),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 0,
                              ),BoxShadow(
                              color:Color.fromARGB(26,0,0,0),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 0,
                           )] ,
                        
                          color: const Color.fromARGB(255, 241, 241, 243),
                          ),
                        ),
                    )],
                  ),
               ),
            )
          ]);
      }
}




}