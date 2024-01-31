
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/models/transaction.dart';

class TransactionProvider extends ChangeNotifier {
//NOTE! notic when data has change!
  List<Transaction> transactions = [
    Transaction("guitar",5000,DateTime.now()),
    Transaction("shirt",500,DateTime.now()),
    Transaction("book",500,DateTime.now()),
    Transaction("Medicine",390,DateTime.now()),
    Transaction("Coffe",150,DateTime.now()),
    Transaction("Meal",200,DateTime.now()),
  ];

  //NOTE! get data method
  List<Transaction> getTransaction(){
    return transactions;
  }

  void addTransaction(Transaction statements){
    transactions.add(statements);
  }

}