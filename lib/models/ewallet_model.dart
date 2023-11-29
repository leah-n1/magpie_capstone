import 'dart:convert';

import 'transaction_model.dart';

class EWallet {
  final String accountNumber;
  final num balance;
  final String accountName;
  List<Transaction> transactionHistory;
  
  
EWallet({
  required this.accountNumber,
  required this.balance,
  required this.accountName,
  required this.transactionHistory
});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': accountNumber,
      'balance': balance,
      'accountName': accountName,
      'transactionHistory': transactionHistory.map((x) => x.toMap()).toList(),
    };
  }

  factory EWallet.fromMap(Map<String, dynamic> map) {
    return EWallet(
      accountNumber: map['accountNumber'] as String,
      balance: map['balance'] as num,
      accountName: map['accountName'] as String,
      transactionHistory: List<Transaction>.from((map['transactionHistory'] as List<int>).map<Transaction>((x) => Transaction.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory EWallet.fromJson(String source) => EWallet.fromMap(json.decode(source) as Map<String, dynamic>);
}

