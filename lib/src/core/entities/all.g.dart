// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    id: json['id'] as int,
    userId: json['userId'] as String,
    accountNumber: json['accountNumber'] as String,
    balance: json['balance'] as String,
    alias: json['alias'] as String,
    notificationType: json['notificationType'] as String,
    notificationAddress: json['notificationAddress'] as String,
    status: json['status'] as String,
    createdOn: json['createdOn'] as String,
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'accountNumber': instance.accountNumber,
      'balance': instance.balance,
      'alias': instance.alias,
      'notificationType': instance.notificationType,
      'notificationAddress': instance.notificationAddress,
      'status': instance.status,
      'createdOn': instance.createdOn,
    };

AuthCredentials _$AuthCredentialsFromJson(Map<String, dynamic> json) {
  return AuthCredentials(
    email: json['email'] as String,
    phoneNumber: json['phoneNumber'] as String,
    password: json['password'] as String,
    passcode: json['passcode'] as String,
    agent: json['agent'] as String,
  );
}

Map<String, dynamic> _$AuthCredentialsToJson(AuthCredentials instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'passcode': instance.passcode,
      'agent': instance.agent,
    };

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return Device(
    id: json['id'] as int,
    assignedTo: json['assignedTo'] as String,
    accountId: json['accountId'] as String,
    pin: json['pin'] as String,
    rentedOn: json['rentedOn'] as String,
    returnedOn: json['returnedOn'] as String,
    rentedState: json['rentedState'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'id': instance.id,
      'assignedTo': instance.assignedTo,
      'accountId': instance.accountId,
      'pin': instance.pin,
      'rentedOn': instance.rentedOn,
      'returnedOn': instance.returnedOn,
      'rentedState': instance.rentedState,
      'status': instance.status,
    };

Geolocation _$GeolocationFromJson(Map<String, dynamic> json) {
  return Geolocation(
    id: json['id'] as int,
    itemId: json['itemId'] as String,
    category: json['category'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    status: json['status'] as String,
    lastSeen: json['lastSeen'] as String,
  );
}

Map<String, dynamic> _$GeolocationToJson(Geolocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'category': instance.category,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': instance.status,
      'lastSeen': instance.lastSeen,
    };

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    id: json['id'] as int,
    ticketId: json['ticketId'] as String,
    sentOn: json['sentOn'] as String,
    sender: json['sender'] as String,
    body: json['body'] as String,
    subject: json['subject'] as String,
    handledBy: json['handledBy'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'ticketId': instance.ticketId,
      'sentOn': instance.sentOn,
      'sender': instance.sender,
      'body': instance.body,
      'subject': instance.subject,
      'handledBy': instance.handledBy,
      'status': instance.status,
    };

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return Notification(
    id: json['id'] as String,
    uuid: json['uuid'] as String,
    channel: json['channel'] as String,
    category: json['category'] as String,
    receiver: json['receiver'] as String,
    user: json['user'] as String,
    status: json['status'] as String,
    title: json['title'] as String,
    body: json['body'] as String,
    sentOn: json['sentOn'] as String,
  );
}

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'channel': instance.channel,
      'category': instance.category,
      'receiver': instance.receiver,
      'user': instance.user,
      'status': instance.status,
      'title': instance.title,
      'body': instance.body,
      'sentOn': instance.sentOn,
    };

Organisation _$OrganisationFromJson(Map<String, dynamic> json) {
  return Organisation(
    id: json['id'] as int,
    uuid: json['uuid'] as String,
    contactPersonId: json['contactPersonId'] as String,
    name: json['name'] as String,
    industry: json['industry'] as String,
    size: json['size'] as String,
    status: json['status'] as String,
    photoUrl: json['photoUrl'] as String,
    address: json['address'] as String,
    foundedOn: json['foundedOn'] as String,
    contactPersonRole: json['contactPersonRole'] as String,
    businessLicenceUrl: json['businessLicenceUrl'] as String,
    proofOfAddressUrl: json['proofOfAddressUrl'] as String,
  );
}

Map<String, dynamic> _$OrganisationToJson(Organisation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'contactPersonId': instance.contactPersonId,
      'name': instance.name,
      'industry': instance.industry,
      'size': instance.size,
      'status': instance.status,
      'photoUrl': instance.photoUrl,
      'address': instance.address,
      'foundedOn': instance.foundedOn,
      'contactPersonRole': instance.contactPersonRole,
      'businessLicenceUrl': instance.businessLicenceUrl,
      'proofOfAddressUrl': instance.proofOfAddressUrl,
    };

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return Payment(
    id: json['id'] as int,
    status: json['status'] as String,
    provider: json['provider'] as String,
    amount: json['amount'] as String,
    from: json['from'] as String,
    to: json['to'] as String,
    dateOn: json['dateOn'] as String,
  );
}

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'provider': instance.provider,
      'amount': instance.amount,
      'from': instance.from,
      'to': instance.to,
      'dateOn': instance.dateOn,
    };

Session _$SessionFromJson(Map<String, dynamic> json) {
  return Session(
    id: json['id'] as int,
    userId: json['userId'] as String,
    accessToken: json['accessToken'] as String,
    role: json['role'] as String,
  );
}

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'role': instance.role,
    };

Setting _$SettingFromJson(Map<String, dynamic> json) {
  return Setting(
    id: json['id'] as int,
    name: json['name'] as String,
    value: json['value'] as String,
    defaultValue: json['defaultValue'] as String,
  );
}

Map<String, dynamic> _$SettingToJson(Setting instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'defaultValue': instance.defaultValue,
    };

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return Ticket(
    id: json['id'] as int,
    openedOn: json['openedOn'] as String,
    topic: json['topic'] as String,
    openedBy: json['openedBy'] as String,
    handledBy: json['handledBy'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'openedOn': instance.openedOn,
      'topic': instance.topic,
      'openedBy': instance.openedBy,
      'handledBy': instance.handledBy,
      'status': instance.status,
    };

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return Transaction(
    id: json['id'] as int,
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
}

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'category': instance.category,
      'amount': instance.amount,
      'accountFrom': instance.accountFrom,
      'accountTo': instance.accountTo,
      'reference': instance.reference,
      'initiatedOn': instance.initiatedOn,
      'deviceFrom': instance.deviceFrom,
      'deviceTo': instance.deviceTo,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    name: json['name'] as String,
    address: json['address'] as String,
    password: json['password'] as String,
    city: json['city'] as String,
    email: json['email'] as String,
    gender: json['gender'] as String,
    uuid: json['uuid'] as String,
    idUrl: json['idUrl'] as String,
    bornOn: json['bornOn'] as String,
    registeredOn: json['registeredOn'] as String,
    organisation: json['organisation'] as String,
    phoneNumber: json['phoneNumber'] as String,
    photoUrl: json['photoUrl'] as String,
    preferredLanguage: json['preferredLanguage'] as String,
    proofOfAddressUrl: json['proofOfAddressUrl'] as String,
    role: json['role'] as String,
    status: json['status'] as String,
    subdivision: json['subdivision'] as String,
    authorization: json['authorization'] as String,
    agent: json['agent'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'status': instance.status,
      'preferredLanguage': instance.preferredLanguage,
      'photoUrl': instance.photoUrl,
      'address': instance.address,
      'bornOn': instance.bornOn,
      'registeredOn': instance.registeredOn,
      'organisation': instance.organisation,
      'city': instance.city,
      'gender': instance.gender,
      'subdivision': instance.subdivision,
      'idUrl': instance.idUrl,
      'proofOfAddressUrl': instance.proofOfAddressUrl,
      'role': instance.role,
      'authorization': instance.authorization,
      'agent': instance.agent,
    };

Validation _$ValidationFromJson(Map<String, dynamic> json) {
  return Validation(
    json['value'] as String,
    json['error'] as String,
  );
}

Map<String, dynamic> _$ValidationToJson(Validation instance) =>
    <String, dynamic>{
      'value': instance.value,
      'error': instance.error,
    };

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse(
    message: json['message'] as String,
    accessToken: json['accessToken'] as String,
    expiresIn: json['expiresIn'] as int,
    refreshToken: json['refreshToken'] as String,
    refreshExpiresIn: json['refreshExpiresIn'] as int,
    tokenType: json['tokenType'] as String,
    notBeforePolicy: json['notBeforePolicy'] as int,
    sessionState: json['sessionState'] as String,
    scope: json['scope'] as String,
  );
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
      'refreshToken': instance.refreshToken,
      'refreshExpiresIn': instance.refreshExpiresIn,
      'tokenType': instance.tokenType,
      'notBeforePolicy': instance.notBeforePolicy,
      'sessionState': instance.sessionState,
      'scope': instance.scope,
    };
