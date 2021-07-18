import 'package:json_annotation/json_annotation.dart';

part 'all.g.dart';

@JsonSerializable()
class Account {
  int id;
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

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable()
class AuthCredentials {
  String email;
  String phoneNumber;
  String password;
  String passcode;
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

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}

@JsonSerializable()
class Geolocation {
  int id;
  String itemId;
  String category;
  String latitude;
  String longitude;
  String status;
  String lastSeen;

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
  String ticketId;
  String sentOn;
  String sender;
  String body;
  String subject;
  String handledBy;
  String status;

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
  String id;
  String uuid;
  String channel;
  String category;
  String receiver;
  String user;
  String status;
  String title;
  String body;
  String sentOn;

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
  int id;
  String uuid;
  String contactPersonId;
  String name;
  String industry;
  String size;
  String status;
  String photoUrl;
  String address;
  String foundedOn;
  String contactPersonRole;
  String businessLicenceUrl;
  String proofOfAddressUrl;

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
  int id;
  String status;
  String provider;
  String amount;
  String from;
  String to;
  String dateOn;

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
  String userId;
  String accessToken;
  String role;

  Session({this.id, this.userId, this.accessToken, this.role});

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  Map<String, dynamic> toJson() => _$SessionToJson(this);
}

@JsonSerializable()
class Setting {
  int id;

  String name;
  String value;
  String defaultValue;

  Setting({this.id, this.name, this.value, this.defaultValue});

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);

  Map<String, dynamic> toJson() => _$SettingToJson(this);
}

@JsonSerializable()
class Ticket {
  int id;

  String openedOn;
  String topic;
  String openedBy;
  String handledBy; //must be operator
  String status;

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
  int id;
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

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}

@JsonSerializable()
class User {
  final String uuid;
  final String name;
  final String email;
  final String phoneNumber;
  final String password;
  final String status;
  final String preferredLanguage;
  final String photoUrl;
  final String address;
  final String bornOn;
  final String registeredOn;
  final String organisation;
  final String city;
  final String gender;
  final String subdivision;
  final String idUrl;
  final String proofOfAddressUrl;
  final String role;
  final String authorization;
  final String agent;

  User(
      {this.name,
      this.address,
      this.password,
      this.city,
      this.email,
      this.gender,
      this.uuid,
      this.idUrl,
      this.bornOn,
      this.registeredOn,
      this.organisation,
      this.phoneNumber,
      this.photoUrl,
      this.preferredLanguage,
      this.proofOfAddressUrl,
      this.role,
      this.status,
      this.subdivision,
      this.authorization,
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
  final String accessToken;
  final int expiresIn;
  final String refreshToken;
  final int refreshExpiresIn;
  final String tokenType;
  final int notBeforePolicy;
  final String sessionState;
  final String scope;

  LoginResponse({
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
  String name;
  String message;
  int code;
  int status;

  ApiException({this.code, this.message, this.name, this.status});

  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$ApiExceptionToJson(this);
}

@JsonSerializable()
class ApiDataValidationException {
  // @JsonKey(name: "status_code")
  int statusCode;
  String message;
  // @JsonKey(name: "errors")
  Map<String, List<String>> rawErrors;

  ApiDataValidationException({
    this.statusCode,
    this.message,
    this.rawErrors,
  });

  factory ApiDataValidationException.fromJson(Map<String, dynamic> json) =>
      _$ApiDataValidationExceptionFromJson(json);
  Map<String, dynamic> toJson() => _$ApiDataValidationExceptionToJson(this);

  String get errors {
    List<String> result = [];
    rawErrors.forEach((k, v) => result.add(v.map((error) => error).join("\n")));
    return result.join("\n");
  }
}
