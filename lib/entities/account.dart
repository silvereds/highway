class Account {
  String id;
  String userId;
  String accountNumber;
  String balance;
  String alias;
  String notificationType;
  String notificationAddress;
  String status;
  String createdOn;

  Account({
    this.id,
    this.userId,
    this.accountNumber,
    this.balance,
    this.alias,
    this.notificationType,
    this.notificationAddress,
    this.status,
    this.createdOn,
  });

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        id: json['id'] as String,
        userId: json['userId'] as String,
        accountNumber: json['accountNumber'] as String,
        balance: json['balance'] as String,
        alias: json['alias'] as String,
        notificationType: json['notificationType'] as String,
        notificationAddress: json['  notificationAddress'] as String,
        status: json['status'] as String,
        createdOn: json['createdOn'] as String,
      );


      Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'accountNumber': accountNumber,
        'balance': balance,
        'alias' : alias,
        'notificationType'  : notificationType, 
        'notificationAddress' : notificationAddress, 
        'status' : status, 
        'createdOn' : createdOn, 

      };
}
