
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/models/transaction.dart';

class TransactionProvider with ChangeNotifier {
//NOTE! notic when data has change!
  List<Transaction> transaction = [
    Transaction("guitar",5000,DateTime.now()),
    Transaction("shirt",500,DateTime.now()),
    Transaction("book",500,DateTime.now()),
  ];

  //NOTE! get data method
  List<Transaction> getTransaction(){
    return transaction;
  }

  void addTransaction(Transaction statements){
    transaction.add(statements);
  }

}