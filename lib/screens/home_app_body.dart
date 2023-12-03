import 'package:flutter/widgets.dart';
import 'package:flutter_capstone/custom%20widgets/ba_pulldown_refresh.dart';
import '../controller/app_body_widget_controller.dart';
import 'transaction_details.dart';


class BABodyWidget extends StatefulWidget {
 final Size screenSize;
  final Color backgroundColor;
  const BABodyWidget(
      {super.key,
      required this.screenSize,
      this.backgroundColor = const Color.fromRGBO(228, 229, 236, 1)});


  @override
  State<BABodyWidget> createState() => _BABodyWidgetState();
  
}

class _BABodyWidgetState extends State<BABodyWidget> {
  
AppBodyController controller = AppBodyController();
  
  Future<void> pullDownRefresh() async {
    var eWallet = await controller.getEwalletData();
    setState(() {
      controller.listTransaction = eWallet?.transactionHistory ?? [];
      controller.walletName = eWallet?.accountName ?? [];
      controller.walletBalance = eWallet?.balance ?? '0.00';
      controller.walletNumber= eWallet?.accountNumber ?? [];
    });
  }
  

@override void initState(){
  super.initState();
  pullDownRefresh();
}

  didTap(int index) async {
    // print("context $context");
   
    Navigator.push(
      context,
      PageRouteBuilder(
        // settings: RouteSettings(
        //   arguments: controller.listTransaction[index]
        // ),
        pageBuilder: (context, animation1, animation2) {
        return TransactionDetailScreen(transactiondetails: controller.listTransaction[index],);
   } ));
        }
          
    
   

  
@override
  Widget build(BuildContext context) {
  return Container(
    color: const Color(0xFFFDFEFF),
    child: Stack(
              children: [
              Container(
                clipBehavior: Clip.none,
                width: widget.screenSize.width,
                color: const Color(0xFFE4E4EB),
                padding: const EdgeInsets.fromLTRB(16,0,16,0),
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       height:159,
                       width: 336,
                       margin: const EdgeInsets.fromLTRB(0,4,0,8),
                       decoration: BoxDecoration(
                            color: const Color.fromARGB(255,255,255,255),
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
                                   width: 260, 
                                   color: const Color.fromARGB(255,255,255,255),
                                   margin: const EdgeInsets.fromLTRB(1,1,1,0),
                                   padding: const EdgeInsets.fromLTRB(0,2,0,2),
                                   child: Text(
                                     'PHP ${controller.walletBalance}',
                                     style: const TextStyle(
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
                                   child: const Text('Available Balance:',
                                   style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255,10,10,10)
                                   ),)
                                 ),
                                 Container( 
                                  height: 16,
                                  width: 250,
                                   color: const Color.fromARGB(255,255,255,255),
                                   margin: const EdgeInsets.fromLTRB(1,1,1,0),
                                   padding: const EdgeInsets.fromLTRB(0,6,0,0),
                                   child:  Text('Account Name:${controller.walletName}',
                                   style: const TextStyle(
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
                                   child: Text('Account Number: ${controller.walletNumber}',
                                   style: const TextStyle(
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
                             color: const Color.fromARGB(255,255,255,255),
                             margin: const EdgeInsets.fromLTRB(0,16,14,16),
                             child: Column(
                              children: [
                                Container(
                                  height:60,
                                  width:48,
                                  margin: const EdgeInsets.fromLTRB(0,0,40,0),
                                  padding: const  EdgeInsets.fromLTRB(0,0,0,15),
                                  color:const Color.fromARGB(255,255,255,255),
                                  child: Image.asset('assets/images/mdi_remove_red_eye.png')
                                ),
                                Container(
                                  height:60,
                                  width:60,
                                  margin: const EdgeInsets.fromLTRB(20,0,0,0),
                                  padding: const  EdgeInsets.fromLTRB(8,30,0,0),
                                  color: const Color.fromARGB(255,255,255,255),
                                  child:Image.asset('assets/images/Group 57.png'),
                                ),  
                              ],
                             ),
                             ),
                           ),
                         ],
                        ),
                     
                       ),
                     const SizedBox(height:16),
                     Container(
                      clipBehavior: Clip.none,
                      height:117,
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:64,
                              width:64,
                              color: const Color.fromRGBO(254, 254, 254,1),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset ('assets/images/savings.png'),
                                  const SizedBox(height:4),
                                  const Text('Save', style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),)
                                ],
                              )
                             ), 
                             Container(
                              height:64,
                              width:64,
                              color: const Color.fromRGBO(254, 254, 254,1),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset ('assets/images/transfer.png'),
                                  const SizedBox(height:4),
                                  const Text('Transfer', style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),)
                                ],
                              )
                             ),
                             Container(
                              height:64,
                              width:64,
                              color: const Color.fromRGBO(254, 254, 254,1),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset ('assets/images/pay_bill.png'),
                                  const SizedBox(height:4),
                                  const Text('Pay Bills', style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),)
                                ],
                              )
                             ),
                             Container(
                              height:64,
                              width:64,
                              color: const Color.fromRGBO(254, 254, 254,1),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset ('assets/images/bill_split.png'),
                                  const SizedBox(height:4),
                                  const Text('Bill Split', style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),)
                                ],
                              )
                             ),
                             Container(
                              height:64,
                              width:64,
                              color: const Color.fromRGBO(254, 254, 254,1),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset ('assets/images/marketplace.png'),
                                  const SizedBox(height:4),
                                  const Text('Marketplace', style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),)
                                ],
                              )
                             ),
                          ],
                        )
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
                          child: MPPullDownRefresh(
                            scrollWidget: ListView.builder(
                           itemCount: controller.listTransaction.length,
                           shrinkWrap: true,
                           scrollDirection: Axis.vertical,
                           itemBuilder: (context,index) {
                            
                             return GestureDetector(
                              onTap: () => didTap(index),
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
                                       padding: const EdgeInsets.all(4),
                                       color: controller.listTransaction[index].type == "Debit" 
                                                 ? const Color.fromRGBO(234,140,151, 1) : 
                                                  const Color.fromRGBO(13,170,57,1),
                                       margin: const EdgeInsets.fromLTRB(10,20,0,25),
                                        child: controller.listTransaction[index].type == "Debit"
                                           ? Image.asset('assets/images/arrow_down.png') :
                                             Image.asset('assets/images/arrow_up.png')
              
                                     )),
                                     Expanded(
                                       flex: 4,
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
                                             height:18,
                                             color: const Color.fromRGBO(254, 254, 254,1),
                                             margin: const EdgeInsets.all(1),
                                             child: Text(
                                               'Amount: PHP ${controller.listTransaction[index].amount}',
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
                                               'Date:  ${controller.listTransaction[index].date}',
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
                                               'Description: ${controller.listTransaction[index].description}',
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
                                               controller.listTransaction[index].type,
                                               style:  TextStyle(
                                                 color: controller.listTransaction[index].type == "Debit" 
                                                 ? const Color.fromRGBO(234,140,151, 1) : 
                                                  const Color.fromRGBO(13,170,57,1),
                                                 fontWeight: FontWeight.w600,
                                                 fontSize: 12,),),
                                             ),
                                            ],
                                         ),
                                       ),
                                     ),]
                                   ),),
                                  );}
                               ), 
                            onRefresh: () async {
                              await pullDownRefresh();
                            })
                          ))
                             ],),
                  )]),
  );}}
                  
            
            
      