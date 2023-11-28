


class Transaction{
  String transactionId;
  DateTime date;
  String type;
  double amount;
  String description;
  
Transaction({
  required this.transactionId,
  required this.date,
  required this.type,
  required this.amount,
  required this.description,
});
}

class Transactions{
 List<Transaction> listTransactions =[];
}


List<Transaction> getTransaction(){
 var tempList = [
   Transaction(
      transactionId: "T1001",
      date: DateTime.parse("2023-11-20"),
      type: "Debit",
      amount: 200.00,
      description: "Grocery Shopping"),
    Transaction(
      transactionId: "T1002",
      date: DateTime.parse("2023-11-18"),
      type: "Credit",
      amount: 500.00,
      description: "Salary Deposit"),
    Transaction(
      transactionId: "T1003",
      date: DateTime.parse("2023-11-15"),
      type: "Debit",
      amount: 150.00,
      description: "Utility Bill Payment"),
    Transaction(
      transactionId: "T1004",
      date: DateTime.parse("2023-11-12"),
      type: "Credit",
      amount: 300.00,
      description: "Refund from Online Shopping"),
    Transaction(
      transactionId: "T1005",
      date: DateTime.parse("2023-11-10"),
      type: "Debit",
      amount:  100.00,
      description: "Restaurant Meal"),
    ];
     return tempList;
}

didTap(){
var tempTransaction = getTransaction();
 for ( var item in tempTransaction) {
    debugLog 
  }
}
