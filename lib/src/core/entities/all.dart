import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';

part 'all.g.dart';

@JsonSerializable()
class Account {
  final int id;
  final String userId;
  final String accountNumber;
  final String balance;
  final String alias;
  final String notificationType;
  final String notificationAddress;
  final String status;
  final String createdOn;

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

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable()
class AuthCredentials {
  final String email;
  final String phoneNumber;
  String password;
  final String passcode;
  String agent = "mobile";

  AuthCredentials({
    this.email,
    this.phoneNumber,
    this.password,
    this.passcode,
    this.agent,
  }) {
    this.agent = "mobile";
  }

  factory AuthCredentials.fromJson(Map<String, dynamic> json) =>
      _$AuthCredentialsFromJson(json);

  Map<String, dynamic> toJson() => _$AuthCredentialsToJson(this);
}

@JsonSerializable()
class Device {
  final int id;
  final String assignedTo;
  final String accountId;
  final String pin;
  final String rentedOn;
  final String returnedOn;
  final String rentedState;
  final String status;

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

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}

@JsonSerializable()
class Geolocation {
  int id;
  final String itemId;
  final String category;
  final String latitude;
  final String longitude;
  final String status;
  final String lastSeen;

  Geolocation({
    this.id,
    this.itemId,
    this.category,
    this.latitude,
    this.longitude,
    this.status,
    this.lastSeen,
  });

  factory Geolocation.fromJson(Map<String, dynamic> json) =>
      _$GeolocationFromJson(json);

  Map<String, dynamic> toJson() => _$GeolocationToJson(this);
}

@JsonSerializable()
class Message {
  int id;
  final String ticketId;
  final String sentOn;
  final String sender;
  final String body;
  final String subject;
  final String handledBy;
  final String status;

  Message({
    this.id,
    this.ticketId,
    this.sentOn,
    this.sender,
    this.body,
    this.subject,
    this.handledBy,
    this.status,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

@JsonSerializable()
class Notification {
  final String id;
  final String uuid;
  final String channel;
  final String category;
  final String receiver;
  final String user;
  final String status;
  final String title;
  final String body;
  final String sentOn;

  Notification(
      {this.id,
      this.uuid,
      this.channel,
      this.category,
      this.receiver,
      this.user,
      this.status,
      this.title,
      this.body,
      this.sentOn});

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}

@JsonSerializable()
class Organisation {
  final int id;
  final String uuid;
  final String contactPersonId;
  final String name;
  final String industry;
  final String size;
  final String status;
  final String photoUrl;
  final String address;
  final String foundedOn;
  final String contactPersonRole;
  final String businessLicenceUrl;
  final String proofOfAddressUrl;

  Organisation({
    this.id,
    this.uuid,
    this.contactPersonId,
    this.name,
    this.industry,
    this.size,
    this.status,
    this.photoUrl,
    this.address,
    this.foundedOn,
    this.contactPersonRole,
    this.businessLicenceUrl,
    this.proofOfAddressUrl,
  });

  factory Organisation.fromJson(Map<String, dynamic> json) =>
      _$OrganisationFromJson(json);

  Map<String, dynamic> toJson() => _$OrganisationToJson(this);
}

@JsonSerializable()
class Payment {
  final int id;
  final String status;
  final String provider;
  final String amount;
  final String from;
  final String to;
  final String dateOn;

  Payment({
    this.id,
    this.status,
    this.provider,
    this.amount,
    this.from,
    this.to,
    this.dateOn,
  });

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}

@JsonSerializable()
class Session {
  int id;
  final String userId;
  final String accessToken;
  final String role;

  Session({this.id, this.userId, this.accessToken, this.role});

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  Map<String, dynamic> toJson() => _$SessionToJson(this);
}

@JsonSerializable()
class Setting {
  int id;

  final String name;
  final String value;
  final String defaultValue;

  Setting({this.id, this.name, this.value, this.defaultValue});

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);

  Map<String, dynamic> toJson() => _$SettingToJson(this);
}

@JsonSerializable()
class Ticket {
  final int id;

  final String openedOn;
  final String topic;
  final String openedBy;
  final String handledBy; //must be operator
  final String status;

  Ticket({
    this.id,
    this.openedOn,
    this.topic,
    this.openedBy,
    this.handledBy,
    this.status,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}

@JsonSerializable()
class Transaction {
  final int id;
  final String status;
  final String category;
  final String amount;
  final String accountFrom;
  final String accountTo;
  final String reference;
  final String initiatedOn;
  final String deviceFrom;
  final String deviceTo;

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

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}

@JsonSerializable()
class User {
  final String uuid;
  final String name;
  final String email;
  final String password;
  final String phoneNumber;
  final String preferredLanguage;
  final String photoUrl;
  final String branch;
  final String address;
  final String city;
  final String gender;
  final String bornOn;
  final String bornAt;
  final String idUrl;
  final String proofOfAddress;
  final String license;
  final String status;
  final String role;
  final String session;
  final String date;
  final String agent;

  User(
      {this.branch,
      this.bornAt,
      this.license,
      this.session,
      this.date,
      this.name,
      this.address,
      this.password,
      this.city,
      this.email,
      this.gender,
      this.uuid,
      this.idUrl,
      this.bornOn,
      // this.registeredOn,
      // this.organisation,
      this.phoneNumber,
      this.photoUrl,
      this.preferredLanguage,
      this.proofOfAddress,
      this.role,
      this.status,
      // this.subdivision,
      // this.authorization,
      this.agent});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Validation {
  String value;
  String error;

  Validation(this.value, this.error);

  factory Validation.fromJson(Map<String, dynamic> json) =>
      _$ValidationFromJson(json);

  Map<String, dynamic> toJson() => _$ValidationToJson(this);
}

@JsonSerializable()
class LoginResponse {
  final String message;
  final String error;
  final String accessToken;
  final int expiresIn;
  final String refreshToken;
  final int refreshExpiresIn;
  final String tokenType;
  final int notBeforePolicy;
  final String sessionState;
  final String scope;

  LoginResponse({
    this.error,
    this.message,
    this.accessToken,
    this.expiresIn,
    this.refreshToken,
    this.refreshExpiresIn,
    this.tokenType,
    this.notBeforePolicy,
    this.sessionState,
    this.scope,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class ApiException {
  final String name;
  final String error;
  final int code;
  final int status;

  ApiException({this.code, this.error, this.name, this.status});

  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$ApiExceptionToJson(this);
}

@JsonSerializable()
class ApiDataValidationException {
  final int statusCode;
  final String message;
  final String error;

  ApiDataValidationException({
    this.statusCode,
    this.message,
    this.error,
  });

  factory ApiDataValidationException.fromJson(Map<String, dynamic> json) =>
      _$ApiDataValidationExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$ApiDataValidationExceptionToJson(this);

  String get errors {
    return error;
  }
}

// ------------------------------------------------------------------------------.------------------------ //

class UserId {
  final int id;

  UserId({this.id});

  factory UserId.fromJson(dynamic json) {
    return UserId(id: json['id'] as int);
  }

  @override
  String toString() {
    return '{${this.id}}';
  }
}

class Location {
  String lat;
  String lon;

  Location({
    this.lat,
    this.lon,
  });

  factory Location.fromJson(dynamic json) {
    return Location(
        lat: json(
      ['lat'] as String,
      lon: json['lon'] as String,
    ));
  }
}

class Balance {
  double numberLong;

  Balance({this.numberLong});

  factory Balance.fromJson(dynamic json) {
    return Balance(numberLong: json['numberLong'] as double);
  }

  @override
  String toString() {
    return '{${this.numberLong}}';
  }
}

class AddedOn {
  Date date;

  AddedOn({this.date});

  factory AddedOn.fromJson(dynamic json) {
    return AddedOn(date: json['date']);
  }

  @override
  String toString() {
    return '{${this.date}}';
  }
}

class CreatedOn {
  Date date;

  CreatedOn({this.date});

  factory CreatedOn.fromjson(dynamic json) {
    return CreatedOn(date: json['date']);
  }

  @override
  String toString() {
    return ' {${this.date}}';
  }
}

class Date {
  String numberLong;

  Date({this.numberLong});

  factory Date.fromjson(dynamic json) {
    return Date(numberLong: json['numberLong'] as String);
  }
  @override
  String toString() {
    return ' {${this.numberLong}}';
  }
}

class AssignedTo {
  String numberLong;

  AssignedTo({this.numberLong});

  factory AssignedTo.fromjson(dynamic json) {
    return AssignedTo(numberLong: json['numberLong'] as String);
  }
  @override
  String toString() {
    return ' {${this.numberLong}}';
  }
}

class Alias {
  String name;
  String phoneNumber;
  String email;
  String language;

  Alias({this.name, this.phoneNumber, this.email, this.language});

  factory Alias.fromJson(dynamic json) {
    return Alias(
        name: json['name'],
        phoneNumber: json['phoneNumber'],
        email: json['email'],
        language: json['language']);
  }

  @override
  String toString() {
    return '{${this.name}, ${this.phoneNumber}, ${this.email}, ${this.language}}';
  }
}

class Devices {
  String id;
  String type;
  String pin;
  AddedOn addedOn;
  AssignedTo assignedTo;
  String status;
  Location location;
  Alias alias;

  Devices(
      {this.id,
      this.type,
      this.pin,
      this.addedOn,
      this.assignedTo,
      this.status,
      this.location,
      this.alias});

  factory Devices.fromJson(dynamic json) {
    return Devices(
        id: json['id'],
        type: json['type'],
        pin: json['pin'],
        addedOn: json['addedOn'],
        assignedTo: json['assignedTo'],
        status: json['status'],
        location: json['location'],
        alias: json['alias']);
  }

  @override
  String toString() {
    return '{${this.id}, ${this.type}, ${this.pin}, ${this.addedOn}, ${this.assignedTo}, ${this.status}, ${this.location}, ${this.alias} }';
  }
}

class Accounts {
  String id;
  Balance balance;
  int number;
  int key;
  String tag;
  String type;
  String status;
  CreatedOn createdOn;
  List<Devices> devices;
  Alias alias;

  Accounts(
      {this.id,
      this.balance,
      this.number,
      this.key,
      this.tag,
      this.status,
      this.createdOn,
      this.devices});

  factory Accounts.fromJson(dynamic json) {
    return Accounts(
      id: json['id'] as String,
      balance: json['balance'],
      number: json['number'] as int,
      key: json['key'] as int,
      status: json['status'] as String,
      createdOn: json['createdOn'],
      devices: json['device'],
    );
  }

  String toSting() {
    return '{${this.id}, ${this.balance}, ${this.number}, ${this.key}, ${this.status}, ${this.createdOn}, ${this.devices}}';
  }
}

class Amount {
  String numberLong;

  Amount({this.numberLong});

  factory Amount.fromjson(dynamic json) {
    return Amount(numberLong: json['numberLong'] as String);
  }

  String toSting() {
    return ' {${this.numberLong}}';
  }
}

class Charges {
  String numberLong;

  Charges({this.numberLong});

  factory Charges.fromjson(dynamic json) {
    return Charges(numberLong: json['numberLong'] as String);
  }

  String toSting() {
    return ' {${this.numberLong}}';
  }
}

class Receipts {
  String id;
  String title;
  Amount amount;
  Charges charges;

  Receipts({this.id, this.title, this.amount, this.charges});

  factory Receipts.fromJson(dynamic json) {
    return Receipts(
      id: json['id'],
      title: json['title'],
      amount: json['amount'],
      charges: json['charges'],
    );
  }

  String toString() {
    return ' {${this.id}, ${this.title}, ${this.amount}, ${this.charges}}';
  }
}

class OpenedOn {
  Date date;

  OpenedOn({this.date});

  factory OpenedOn.fromJson(dynamic json) {
    return OpenedOn(date: json['date']);
  }

  @override
  String toString() {
    return ' {${this.date}}';
  }
}

class HandledBy {
  String operator;
  Date date;

  HandledBy({this.operator, this.date});

  factory HandledBy.fromJson(dynamic json) {
    return HandledBy(
      operator: json['operator'],
      date: json['date'],
    );
  }
  @override
  String toString() {
    return ' {${this.operator}, ${this.date}}';
  }
}

class Tickets {
  String id;
  String status;
  OpenedOn openedOn;
  String topic;
  List<HandledBy> handledBy;
  List<Messages> messages;

  Tickets(
      {this.id,
      this.status,
      this.openedOn,
      this.topic,
      this.handledBy,
      this.messages});

  factory Tickets.fromJson(dynamic json) {
    return Tickets(
      id: json['id'],
      status: json['status'],
      openedOn: json['openedOn'],
      topic: json['topic'],
      handledBy: json['handledBy'],
      messages: json['messages'],
    );
  }
  @override
  String toString() {
    return '{ ${this.id}, ${this.status}, ${this.openedOn},${this.topic}, ${this.handledBy}, ${this.messages}}';
  }
}

class SendOn {
  Date date;

  SendOn({this.date});

  factory SendOn.fromJson(dynamic json) {
    return SendOn(date: json['date']);
  }

  @override
  String toString() {
    return ' {${this.date}}';
  }
}

class Messages {
  String id;
  String sentBy;
  SendOn sentOn;
  String body;

  Messages({this.id, this.sentBy, this.sentOn, this.body});

  factory Messages.fromJson(dynamic json) {
    return Messages(
        id: json['id'],
        sentBy: json['sentBy'],
        sentOn: json['sentOn'],
        body: json['body']);
  }

  @override
  String toString() {
    return '{${this.id}, ${this.sentBy}, ${this.sentOn}, ${this.body}}';
  }
}

class Users {
  String id;
  String name;
  String email;
  String phoneNumber;
  String preferredLanguage;
  String photoUrl;
  String branch;
  String address;
  String city;
  String gender;
  String bornOn;
  String bornAt;
  String idUrl;
  String proofOfAddress;
  List<Accounts> accounts;
  List<Devices> devices;
  List<Receipts> receipts;
  List<Tickets> tickets;

  Users(
      {this.branch,
      this.bornAt,
      this.name,
      this.address,
      this.city,
      this.email,
      this.gender,
      this.id,
      this.idUrl,
      this.bornOn,
      this.phoneNumber,
      this.photoUrl,
      this.preferredLanguage,
      this.proofOfAddress,
      this.accounts,
      this.devices,
      this.receipts});

  factory Users.fromJson(dynamic json) {
    return Users(
      branch: json['branch'] as String,
      bornAt: json['bornAt'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      id: json['id'] as String,
      idUrl: json['idUrl'] as String,
      bornOn: json['bornAt'] as String,
      phoneNumber: json['phoneNumber'] as String,
      photoUrl: json['photoUrl'] as String,
      preferredLanguage: json['preferredLanguage'] as String,
      proofOfAddress: json['proofOfAddress'],
      accounts: json['accounts'],
      devices: json['Devices'],
      receipts: json['receipts'],
    );
  }
}

class UserInfoApi {
  UserId userId;
  String name;
  String city;
  String country;
  int code;
  Location location;
  Accounts accounts;
  List<Users> users;
  String uuid;

  UserInfoApi(
      {this.userId,
      this.name,
      this.city,
      this.country,
      this.code,
      this.location,
      this.accounts,
      this.users,
      this.uuid});

  factory UserInfoApi.fromJson(dynamic json) {
    return UserInfoApi(
      userId: json['userId'],
      name: json['name'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      code: json['code'] as int,
      location: json['location'],
      accounts: json['accounts'],
      users: json['users'],
      uuid: json['uuid'],
    );
  }

  @override
  String toString() {
    return '{  ${this.userId}, ${this.name},  ${this.city}, ${this.country}, ${this.code}, ${this.location}, ${this.accounts}, ${this.users}, ${this.uuid} }';
  }
}
