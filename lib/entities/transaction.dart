class Transaction {
  String id;
  String status;
  String category;
  String amount;
  String accountFrom;
  String accountTo;
  String reference;
  String initiatedOn;
  String deviceFrom;
  String deviceTo;

  Transaction({
    this.id,
    this.status,
    this.category,
    this.amount,
    this.accountFrom,
    this.accountTo,
    this.reference,
    this.initiatedOn,
    this.deviceFrom,
    this.deviceTo,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        id: json['id'] as String,
        status: json['status'] as String,
        category: json['category'] as String,
        amount: json['amount'] as String,
        accountFrom: json['accountFrom'] as String,
        accountTo: json['accountTo'] as String,
        reference: json['reference'] as String,
        initiatedOn: json['initiatedOn'] as String,
        deviceFrom: json['deviceFrom'] as String,
        deviceTo: json['deviceTo'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'status': status,
        'category': category,
        'amount': amount,
        'accountFrom': accountFrom,
        'accountTo': accountTo,
        'reference': reference,
        'initiatedOn': initiatedOn,
        'deviceFrom': deviceFrom,
        'deviceTo': deviceTo,
      };
}
