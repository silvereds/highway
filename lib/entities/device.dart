class Device {
  int id;
  String assignedTo;
  String accountId;
  String pin;
  String rentedOn;
  String returnedOn;
  String rentedState;
  String status;

  Device({
    this.id,
    this.assignedTo,
    this.accountId,
    this.pin,
    this.rentedOn,
    this.returnedOn,
    this.rentedState,
    this.status,
  });

  factory Device.fromJson(Map<String, dynamic> json) => Device(
        id: json['Id'] as int,
        accountId: json['accountId'] as String,
        pin: json['pin'] as String,
        rentedOn: json['rentedOn'] as String,
        returnedOn: json['returnedOn'] as String,
        rentedState: json['rentedState'] as String,
        status: json['status'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'pin': pin,
        'rentedOn': rentedOn,
        'returnedOn': returnedOn,
        'rentedState': rentedState,
        'status': status,
      };
}
