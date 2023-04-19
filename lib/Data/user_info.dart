enum TransactionType {
  outflow,
  inflow,
}

enum ItemCategoryType {
  fashion,
  grocery,
  food,
  transport,
  payments,
}

class UserInfo {
  final String name;
  final String tBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;

  UserInfo({
    required this.name,
    required this.tBalance,
    required this.inflow,
    required this.outflow,
    required this.transactions,
  });
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  Transaction({
    required this.categoryType,
    required this.transactionType,
    required this.itemCategoryName,
    required this.itemName,
    required this.amount,
    required this.date,
  });
}

List<Transaction> transactions1 = [
  Transaction(
    categoryType: ItemCategoryType.fashion,
    transactionType: TransactionType.outflow,
    itemCategoryName: 'Shoes',
    itemName: 'Nike Sneakers',
    amount: '\$295',
    date: 'Apr, 20',
  ),
  Transaction(
    categoryType: ItemCategoryType.transport,
    transactionType: TransactionType.outflow,
    itemCategoryName: 'Cab',
    itemName: 'Uber',
    amount: '\$50',
    date: 'Apr, 20',
  ),
  Transaction(
    categoryType: ItemCategoryType.fashion,
    transactionType: TransactionType.outflow,
    itemCategoryName: 'Bag',
    itemName: 'Gucci Flax',
    amount: '\$5,500',
    date: 'Apr, 16',
  ),
];

List<Transaction> transactions2 = [
  Transaction(
    categoryType: ItemCategoryType.payments,
    transactionType: TransactionType.inflow,
    itemCategoryName: 'Transfer',
    itemName: 'Payment from Charlie',
    amount: '\$3,490',
    date: 'Apr, 2',
  ),
  Transaction(
    categoryType: ItemCategoryType.transport,
    transactionType: TransactionType.outflow,
    itemCategoryName: 'Cab',
    itemName: 'Uber',
    amount: '\$30',
    date: 'Mar, 27',
  ),
  Transaction(
    categoryType: ItemCategoryType.food,
    transactionType: TransactionType.outflow,
    itemCategoryName: 'Food',
    itemName: 'Burger King and KFC',
    amount: '\$500',
    date: 'Mar, 27',
  ),
];

UserInfo userData = UserInfo(
  name: 'Hank',
  tBalance: '\$5,428',
  inflow: '\$4,000',
  outflow: '\$2,500',
  transactions: transactions1,
);
