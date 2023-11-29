// import 'package:flutter/widgets.dart';
// import '../controller/app_body_widget_controller.dart';
// import '../models/ewallet_model.dart';
// import '../models/transaction_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// // import '../custom_widgets/ba_pulldown_refresh.dart';



// // import '../models/transaction.dart';
// // import 'dart:convert' as convert;



// class AppBodyWidget extends StatefulWidget {
//   // final Size screenSize;
  
// const AppBodyWidget (
//   {super.key});

//   @override
//   State<AppBodyWidget> createState() => _AppBodyWidgetState();
// }

// class _AppBodyWidgetState extends State<AppBodyWidget> {


//   AppBodyController controller = AppBodyController(); 
  
 
//  didTap() async {
  
//     // print(index);
//     // Navigator.push(
//     //   context,
//     //   PageRouteBuilder(
//     //     pageBuilder: (context, animation1, animation2) {
//     //       return TransactionDetailScreen(
//     //         name: '${controller.listTransaction[index].name}',
//     //       );
//     //     },
//     //   ),
//     // );
//   }

//   pullDownRefresh() async {
//     var tempEwalletdata = await controller.getEwalletData();
//     setState(() {
//       // controller.eWalletMap = tempEwalletdata;
//     });
//   }




// @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//   return Stack(
//             children: [
//             Positioned(
//                 top:(screenSize.height * 0.1),
//                 bottom:(screenSize.height * 0.1),
//                 left:0,
//                 right:0,
//                 child:Container(
//                   clipBehavior: Clip.none,
//                   height: screenSize.height,
//                   width: screenSize.width,
//                   color: const Color.fromRGBO(228,229,236,1),
//                   padding: const EdgeInsets.fromLTRB(18,16,18,0),
//                   child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                      children: [
//                        Container(
//                          height:159,
//                          width: 336,
//                          decoration: BoxDecoration(
//                               color: const Color.fromRGBO(254, 254, 254,1),
//                               borderRadius: BorderRadius.circular(25),
//                               boxShadow:const [BoxShadow(
//                                color:Color.fromARGB(26,0,0,0),
//                                offset: Offset(0, 4),
//                                blurRadius: 15,
//                                spreadRadius: 0,
//                             )] ,
//                            ),
//                           child: Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            mainAxisSize: MainAxisSize.max,
//                            crossAxisAlignment: CrossAxisAlignment.center,
//                            children: [
//                              Expanded(
//                                flex: 3,
//                                child: Container(
//                                height: 120,
//                                width:50,
//                                color: const Color.fromARGB(255,255,255,255),
//                                margin: const EdgeInsets.fromLTRB(14,4,8,4),
//                                child: Column(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  mainAxisSize: MainAxisSize.max,
//                                  children: [
//                                    Container(
//                                      height: 50,
//                                      width: 250, 
//                                      color: const Color.fromARGB(255,255,255,255),
//                                      margin: const EdgeInsets.fromLTRB(1,1,1,0),
//                                      padding: const EdgeInsets.fromLTRB(0,2,0,2),
//                                      child: const Text(
//                                        'PHP',
//                                        style:TextStyle(
//                                          fontSize:36,
//                                          fontWeight: FontWeight.w600,
//                                          color: Color.fromARGB(255, 10, 10, 10)),),
//                                    ),
//                                    Container(
//                                     height: 25,
//                                     width:250,
//                                      color: const Color.fromARGB(255,255,255,255),
//                                      margin: const EdgeInsets.fromLTRB(1,1,1,0),
//                                      padding: const EdgeInsets.fromLTRB(0,4,0,4),
//                                      child: const Text('Available Balance',
//                                      style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                       color: Color.fromARGB(255,10,10,10)
//                                      ),)
//                                    ),
//                                    Container( 
//                                     height: 14,
//                                     width: 250,
//                                      color: const Color.fromARGB(255,255,255,255),
//                                      margin: const EdgeInsets.fromLTRB(1,1,1,0),
//                                      padding: const EdgeInsets.fromLTRB(0,2,0,2),
//                                      child: const Text('Account Name: ',
//                                      style: TextStyle(
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.w400,
//                                       color: Color.fromARGB(255,10,10,10)
//                                      ),)
//                                    ),
//                                    Container( 
//                                     height: 14,
//                                     width:250,
//                                      color: const Color.fromARGB(255,255,255,255),
//                                      margin: const EdgeInsets.fromLTRB(1,12,1,0),
//                                      padding: const EdgeInsets.fromLTRB(0,2,0,2),
//                                      child: const Text('Account Number: ',
//                                      style: TextStyle(
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.w400,
//                                       color: Color.fromARGB(255,10,10,10)
//                                      ),)
//                                    ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                              Expanded(
//                                flex:1,
//                                child: Container(
//                                height: 120,
//                                width:30,
//                                color: const Color.fromARGB(255, 227, 180, 180),
//                                margin: const EdgeInsets.fromLTRB(0,16,14,16),
//                                ),
//                              ),
//                            ],
//                           ),

//                          ),
//                        const SizedBox(height:16),
//                        Container(
//                          height:117,
//                          width: 336,
//                          decoration: BoxDecoration(
//                               color: const Color.fromARGB(255, 171, 43, 43),
//                               borderRadius: BorderRadius.circular(25),
//                               boxShadow:const [BoxShadow(
//                                color:Color.fromARGB(26,0,0,0),
//                                offset: Offset(0, 4),
//                                blurRadius: 15,
//                                spreadRadius: 0,
//                              )] ,
//                            ),
//                           child:GridView.builder(
//                             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 5
//                             ), 
//                             itemBuilder: (context, index){
//                               return Container();
//                             })
//                          ),
//                        const SizedBox(height:16),
//                        Container(
//                          height: 20,
//                          width: 336,
//                          margin: const EdgeInsets.fromLTRB(8,0,8,0),
//                          child: const Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            crossAxisAlignment: CrossAxisAlignment.center,
//                           children:[
//                             Text('Transactions', style: TextStyle(
//                              color:Color.fromARGB(255, 5, 5, 5),
//                              fontSize: 15,
//                              fontWeight: FontWeight.w600,
//                              height:0,
//                              )),
//                             Text('1 WEEK', style: TextStyle(
//                              color:Color.fromARGB(255, 5, 5, 5),
//                              fontSize: 15,
//                              fontWeight: FontWeight.w600,
//                              height: 0,
//                              ))
//                             ]),
//                          ),
                        
//                          SizedBox(
//                            width:336,
//                            height:220,
//                            child: Container(
//                            width: 336,
//                            height: 220,
//                            margin: const EdgeInsets.fromLTRB(0,0,0,4),
//                            color:  const Color.fromRGBO(228,229,236,1),
//                            child: ListView.builder(
//                              itemCount: 5,
//                              shrinkWrap: true,
//                              scrollDirection: Axis.vertical,
//                              itemBuilder: (context,index){
//                               print('index is $index');
//                                return GestureDetector(
//                                  onTap: () {
//                                   pullDownRefresh();
//                                  },
//                                 //  onRefresh:(){},
//                                  child: Container(
//                                    width: 336,
//                                    height: 95,
//                                    decoration: BoxDecoration(
//                                      color:const Color.fromRGBO(254, 254, 254,1),
//                                      borderRadius: BorderRadius.circular(10),
//                                    ),
                                   
//                                    margin: const EdgeInsets.fromLTRB(0,0,0,15),
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment.start,
//                                      mainAxisSize: MainAxisSize.max,
//                                      crossAxisAlignment: CrossAxisAlignment.center,
//                                      children: [
//                                        Expanded(
//                                          flex: 1,
//                                          child: Container(
//                                          height: 50,
//                                          width: 50,
//                                          color: const Color.fromARGB(255, 227, 180, 180),
//                                          margin: const EdgeInsets.fromLTRB(10,20,0,25)
//                                        )),
//                                        Expanded(
//                                          flex: 4,
//                                          child: Container(
//                                           height: 68,
//                                            width: 50,
//                                            color: const Color.fromARGB(255, 181, 62, 62),
//                                            margin: const EdgeInsets.fromLTRB(8,4,8,4),
//                                            child: Column(
//                                              mainAxisAlignment: MainAxisAlignment.start,
//                                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                                              children: [
//                                               //  Container(
//                                               //  height:18,
//                                               //  color: const Color.fromRGBO(254, 254, 254,1),
//                                               //  margin: const EdgeInsets.all(1),
//                                               //  child: Text(
//                                               //    'Amount: PHP ${controller.listTransaction[index].amount}',
//                                               //     style: const TextStyle(
//                                               //      color: Color.fromARGB(255, 2, 1, 1),
//                                               //      fontWeight: FontWeight.w700,
//                                               //      fontSize: 15,),),
//                                               //  ),
//                                                Container(
//                                                height:14,
//                                                color: const Color.fromRGBO(254, 254, 254,1),
//                                                margin: const EdgeInsets.all(1),
//                                                 child: Text(
//                                                  'Date:  ${controller.listTransaction[index].date}',
//                                                  style: const TextStyle(
//                                                    color: Color.fromARGB(255, 2, 1, 1),
//                                                    fontWeight: FontWeight.w600,
//                                                    fontSize: 12,),),
//                                                ),
//                                                Container(
//                                                height:14,
//                                                color: const Color.fromRGBO(254, 254, 254,1),
//                                                margin: const EdgeInsets.all(1),
//                                                child: Text(
//                                                  'Description: ${controller.listTransaction[index].description}',
//                                                  style: const TextStyle(
//                                                    color: Color.fromARGB(255, 2, 1, 1),
//                                                    fontWeight: FontWeight.w600,
//                                                    fontSize: 12,),),
//                                                ),
//                                                Container(
//                                                height:14,
//                                                color:const Color.fromRGBO(254, 254, 254,1),
//                                                margin: const EdgeInsets.all(1),
//                                                child: Text(
//                                                  controller.listTransaction[index].type,
//                                                  style: const TextStyle(
//                                                    // color: listTransaction[index].type == "Debit" 
//                                                    // ? const Color.fromRGBO(234,140,151, 1) : 
//                                                    //  const Color.fromRGBO(13,170,57,1),
//                                                    fontWeight: FontWeight.w600,
//                                                    fontSize: 12,),),
//                                                ),
//                                               ],
//                                            ),
//                                          ),
//                                        ),]
//                                      ),),
//                                );}
//                                  )))
//                                ],),
//                     ))]);}}
                  
            
            
      