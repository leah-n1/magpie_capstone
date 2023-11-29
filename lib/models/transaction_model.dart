// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class Transaction {
  String transactionId;
  String date;
  String type;
  double amount;
  Transaction({
    required this.transactionId,
    required this.date,
    required this.type,
    required this.amount,
  });
  

  Transaction copyWith({
    String? transactionId,
    String? date,
    String? type,
    double? amount,
  }) {
    return Transaction(
      transactionId: transactionId ?? this.transactionId,
      date: date ?? this.date,
      type: type ?? this.type,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transactionId': transactionId,
      'date': date,
      'type': type,
      'amount': amount,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      transactionId: map['transactionId'] as String,
      date: map['date'] as String,
      type: map['type'] as String,
      amount: map['amount'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) => Transaction.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Transaction(transactionId: $transactionId, date: $date, type: $type, amount: $amount)';
  }

  @override
  bool operator ==(covariant Transaction other) {
    if (identical(this, other)) return true;
  
    return 
      other.transactionId == transactionId &&
      other.date == date &&
      other.type == type &&
      other.amount == amount;
  }

  @override
  int get hashCode {
    return transactionId.hashCode ^
      date.hashCode ^
      type.hashCode ^
      amount.hashCode;
  }
}

  