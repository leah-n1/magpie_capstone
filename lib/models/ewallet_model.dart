
import 'transaction_model.dart';

class EWallet{
  num accountNumber;
  double balance;
  String accountName;
  List<Transaction> transactionHistory;
  
EWallet({
  required this.accountNumber,
  required this.balance,
  required this.accountName,
  required this.transactionHistory
});
}

