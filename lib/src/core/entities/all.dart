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
  final String phone;
  String password;
  final String passcode;
  String agent = "mobile";

  AuthCredentials({
    this.email,
    this.phone,
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
  final String id;
  final String contact;
  final String name;
  final String industry;
  final String size;
  final String logoUrl;
  final String address;
  final String city;
  final AddedOn foundedOn;
  final String businessLicenceUrl;
  final String proofOfAddressUrl;
  final String country;

  Organisation({
    this.id,
    this.name,
    this.contact,
    this.logoUrl,
    this.city,
    this.country,
    this.industry,
    this.size,
    this.address,
    this.foundedOn,
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
  final int id;
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
  final String id;
  final String status;
  final String category;
  final int amount;
  final String accountFrom;
  final String accountTo;
  final String reference;
  final String initiatedON;
  final String deviceFrom;
  final String deviceTo;
  final int charges;

  Transaction({
    this.id,
    this.status,
    this.category,
    this.amount,
    this.accountFrom,
    this.accountTo,
    this.reference,
    this.initiatedON,
    this.deviceFrom,
    this.deviceTo,
    this.charges,
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
  final String phone;
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
  final String authorization;
  final String agent;

  User({
    this.branch,
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
    this.phone,
    this.photoUrl,
    this.preferredLanguage,
    this.proofOfAddress,
    this.role,
    this.status,
    // this.subdivision,
    this.authorization,
    this.agent,
  });

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
class SimpleMessageResponse {
  final String message;

  SimpleMessageResponse({
    this.message,
  });

  factory SimpleMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$SimpleMessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleMessageResponseToJson(this);
}

@JsonSerializable()
class ApiException {
  final String error;

  ApiException({this.error});

  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$ApiExceptionToJson(this);
}

@JsonSerializable()
class ApiDataValidationException {
  final String error;

  ApiDataValidationException({
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
@JsonSerializable()
class UserId {
  final int id;

  UserId({this.id});

  factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);

  Map<String, dynamic> json() => _$UserIdToJson(this);
}

@JsonSerializable()
class Location {
  final String lat;
  final String lon;

  Location({
    this.lat,
    this.lon,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> json() => _$LocationToJson(this);
}

@JsonSerializable()
class Balance {
  final String numberLong;

  Balance({this.numberLong});

  factory Balance.fromJson(dynamic json) => _$BalanceFromJson(json);

  Map<String, dynamic> json() => _$BalanceToJson(this);
}

@JsonSerializable()
class AddedOn {
  final String $date;
  AddedOn({
    this.$date,
  });
  factory AddedOn.fromJson(Map<String, dynamic> json) =>
      _$AddedOnFromJson(json);

  Map<String, dynamic> toJson() => _$AddedOnToJson(this);
}

@JsonSerializable()
class CreatedOn {
  final String date;

  CreatedOn({this.date});

  factory CreatedOn.fromJson(Map<String, dynamic> json) =>
      _$CreatedOnFromJson(json);

  Map<String, dynamic> toJson() => _$CreatedOnToJson(this);
}

@JsonSerializable()
class AssignedTo {
  final String date;

  AssignedTo({this.date});

  factory AssignedTo.fromJson(Map<String, dynamic> json) =>
      _$AssignedToFromJson(json);

  Map<String, dynamic> toJson() => _$AssignedToToJson(this);
}

@JsonSerializable()
class Alias {
  String name;
  String phone;
  String email;
  String language;

  Alias({
    this.name,
    this.phone,
    this.email,
    this.language,
  });

  factory Alias.fromJson(Map<String, dynamic> json) => _$AliasFromJson(json);

  Map<String, dynamic> toJson() => _$AliasToJson(this);
}

@JsonSerializable()
class Devices {
  final String id;
  final String type;
  final String pin;
  final AddedOn addedOn;
  final AddedOn assignedOn;
  final String status;
  final Location location;
  final Alias alias;

  Devices({
    this.id,
    this.type,
    this.pin,
    this.addedOn,
    this.assignedOn,
    this.status,
    this.location,
    this.alias,
  });

  factory Devices.fromJson(Map<String, dynamic> json) =>
      _$DevicesFromJson(json);

  Map<String, dynamic> toJson() => _$DevicesToJson(this);
}

@JsonSerializable()
class Accounts {
  final String id;
  final String number;
  final String key;
  final int balance;
  final String tag;
  final String status;
  final List<Devices> devices;
  final AddedOn createdOn;
  Accounts({
    this.id,
    this.balance,
    this.number,
    this.key,
    this.tag,
    this.status,
    this.createdOn,
    this.devices,
  });

  factory Accounts.fromJson(Map<String, dynamic> json) =>
      _$AccountsFromJson(json);

  Map<String, dynamic> toJson() => _$AccountsToJson(this);
}

@JsonSerializable()
class Amount {
  final String numberLong;
  Amount({
    this.numberLong,
  });

  factory Amount.fromjson(Map<String, dynamic> json) => _$AmountFromJson(json);

  Map<String, dynamic> toJson() => _$AmountToJson(this);
}

@JsonSerializable()
class Charges {
  final String numberLong;
  Charges({
    this.numberLong,
  });

  factory Charges.fromjson(Map<String, dynamic> json) =>
      _$ChargesFromJson(json);

  Map<String, dynamic> toJson() => _$ChargesToJson(this);
}

@JsonSerializable()
class Receipts {
  final String id;
  final String title;
  final int amount;
  final int charges;

  Receipts({
    this.id,
    this.title,
    this.amount,
    this.charges,
  });

  factory Receipts.fromJson(Map<String, dynamic> json) =>
      _$ReceiptsFromJson(json);

  Map<String, dynamic> toJson() => _$ReceiptsToJson(this);
}

@JsonSerializable()
class OpenedOn {
  final String date;

  OpenedOn({this.date});

  factory OpenedOn.fromJson(Map<String, dynamic> json) =>
      _$OpenedOnFromJson(json);

  Map<String, dynamic> toJson() => _$OpenedOnToJson(this);
}

@JsonSerializable()
class HandledBy {
  final String operator;
  final AddedOn date;

  HandledBy({this.operator, this.date});

  factory HandledBy.fromJson(Map<String, dynamic> json) =>
      _$HandledByFromJson(json);

  Map<String, dynamic> toJson() => _$HandledByToJson(this);
}

@JsonSerializable()
class Tickets {
  final String id;
  final String status;
  final AddedOn openedOn;
  final String topic;
  final List<HandledBy> handledBy;
  final List<Messages> messages;

  Tickets({
    this.id,
    this.status,
    this.openedOn,
    this.topic,
    this.handledBy,
    this.messages,
  });

  factory Tickets.fromJson(Map<String, dynamic> json) =>
      _$TicketsFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsToJson(this);
}

@JsonSerializable()
class Messages {
  final String id;
  final String sentBy;
  final AddedOn sentOn;
  final String body;

  Messages({
    this.id,
    this.sentBy,
    this.sentOn,
    this.body,
  });

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);
  Map<String, dynamic> toJson() => _$MessagesToJson(this);
}

@JsonSerializable()
class Users {
  final String id;
  final String name;
  final String langauge;
  final String photoUrl;
  final String address;
  final String city;
  final String gender;
  final AddedOn bornOn;
  final String bornAt;
  final AddedOn registeredOn;
  final String idUrl;
  final String proofOfAddress;
  final List<Accounts> accounts;
  final List<Receipts> receipts;
  final List<Tickets> tickets;

  Users({
    this.registeredOn,
    this.name,
    this.address,
    this.city,
    this.gender,
    this.id,
    this.bornOn,
    this.photoUrl,
    this.langauge,
    this.proofOfAddress,
    this.bornAt,
    this.idUrl,
    this.accounts,
    this.tickets,
    this.receipts,
  });

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}

@JsonSerializable()
class Branche {
  final String name;
  final String city;
  final String country;
  final String code;
  final Location location;
  final Accounts account;
  final List<Users> users;
  final List<Organisation> organisations;
  @JsonKey(name: 'uuid')
  final String id;

  Branche({
    this.id,
    this.name,
    this.city,
    this.country,
    this.code,
    this.location,
    this.account,
    this.users,
    this.organisations,
  });

  factory Branche.fromJson(Map<String, dynamic> json) =>
      _$BrancheFromJson(json);
  Map<String, dynamic> toJson() => _$BrancheToJson(this);
}
