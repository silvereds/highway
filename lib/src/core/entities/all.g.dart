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
    phone: json['phone'] as String,
    password: json['password'] as String,
    passcode: json['passcode'] as String,
    agent: json['agent'] as String,
  );
}

Map<String, dynamic> _$AuthCredentialsToJson(AuthCredentials instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'passcode': instance.passcode,
      'agent': instance.agent,
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
    id: json['id'] as String,
    name: json['name'] as String,
    photoUrl: json['photoUrl'] as String,
    phone: json['phone'] as String,
    branch: json['branch'] as String,
    city: json['city'] as String,
    email: json['email'] as String,
    contactPersonName: json['contactPersonName'] as String,
    status: json['status'] as String,
    country: json['country'] as String,
    industry: json['industry'] as String,
    size: json['size'] as String,
    address: json['address'] as String,
    foundedOn: json['foundedOn'] as String,
    businessLicenceUrl: json['businessLicenceUrl'] as String,
    proofOfAddressUrl: json['proofOfAddressUrl'] as String,
  );
}

Map<String, dynamic> _$OrganisationToJson(Organisation instance) =>
    <String, dynamic>{
      'contactPersonName': instance.contactPersonName,
      'city': instance.city,
      'name': instance.name,
      'industry': instance.industry,
      'size': instance.size,
      'photoUrl': instance.photoUrl,
      'address': instance.address,
      'foundedOn': instance.foundedOn,
      'businessLicenceUrl': instance.businessLicenceUrl,
      'proofOfAddressUrl': instance.proofOfAddressUrl,
      'phone': instance.phone,
      'email': instance.email,
      'country': instance.country,
      'status': instance.status,
      'branch': instance.branch,
      'id': instance.id,
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
    id: json['id'] as String,
    status: json['status'] as String,
    category: json['category'] as String,
    amount: json['amount'] as int,
    accountFrom: json['accountFrom'] as String,
    accountTo: json['accountTo'] as String,
    reference: json['reference'] as String,
    initiatedON: json['initiatedON'] as String,
    deviceFrom: json['deviceFrom'] as String,
    deviceTo: json['deviceTo'] as String,
    charges: json['charges'] as int,
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
      'initiatedON': instance.initiatedON,
      'deviceFrom': instance.deviceFrom,
      'deviceTo': instance.deviceTo,
      'charges': instance.charges,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    branch: json['branch'] as String,
    bornAt: json['bornAt'] as String,
    license: json['license'] as String,
    session: json['session'] as String,
    date: json['date'] as String,
    name: json['name'] as String,
    address: json['address'] as String,
    password: json['password'] as String,
    city: json['city'] as String,
    email: json['email'] as String,
    gender: json['gender'] as String,
    uuid: json['uuid'] as String,
    idUrl: json['idUrl'] as String,
    bornOn: json['bornOn'] as String,
    organisation: json['organisation'] as String,
    phone: json['phone'] as String,
    photoUrl: json['photoUrl'] as String,
    preferredLanguage: json['preferredLanguage'] as String,
    proofOfAddressUrl: json['proofOfAddressUrl'] as String,
    role: json['role'] as String,
    status: json['status'] as String,
    authorization: json['authorization'] as String,
    agent: json['agent'] as String,
    accounts: (json['accounts'] as List)
        ?.map((e) =>
            e == null ? null : Accounts.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    receipts: (json['receipts'] as List)
        ?.map((e) =>
            e == null ? null : Receipts.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tickets: (json['tickets'] as List)
        ?.map((e) =>
            e == null ? null : Tickets.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'preferredLanguage': instance.preferredLanguage,
      'photoUrl': instance.photoUrl,
      'branch': instance.branch,
      'address': instance.address,
      'city': instance.city,
      'gender': instance.gender,
      'bornOn': instance.bornOn,
      'bornAt': instance.bornAt,
      'idUrl': instance.idUrl,
      'proofOfAddressUrl': instance.proofOfAddressUrl,
      'license': instance.license,
      'status': instance.status,
      'role': instance.role,
      'session': instance.session,
      'date': instance.date,
      'authorization': instance.authorization,
      'organisation': instance.organisation,
      'agent': instance.agent,
      'accounts': instance.accounts,
      'receipts': instance.receipts,
      'tickets': instance.tickets,
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

SimpleMessageResponse _$SimpleMessageResponseFromJson(
    Map<String, dynamic> json) {
  return SimpleMessageResponse(
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$SimpleMessageResponseToJson(
        SimpleMessageResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

ApiException _$ApiExceptionFromJson(Map<String, dynamic> json) {
  return ApiException(
    error: json['error'] as String,
  );
}

Map<String, dynamic> _$ApiExceptionToJson(ApiException instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

ApiDataValidationException _$ApiDataValidationExceptionFromJson(
    Map<String, dynamic> json) {
  return ApiDataValidationException(
    error: json['error'] as String,
  );
}

Map<String, dynamic> _$ApiDataValidationExceptionToJson(
        ApiDataValidationException instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

UserId _$UserIdFromJson(Map<String, dynamic> json) {
  return UserId(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$UserIdToJson(UserId instance) => <String, dynamic>{
      'id': instance.id,
    };

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    lat: json['lat'] as String,
    lon: json['lon'] as String,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

Balance _$BalanceFromJson(Map<String, dynamic> json) {
  return Balance(
    numberLong: json['numberLong'] as String,
  );
}

Map<String, dynamic> _$BalanceToJson(Balance instance) => <String, dynamic>{
      'numberLong': instance.numberLong,
    };

AddedOn _$AddedOnFromJson(Map<String, dynamic> json) {
  return AddedOn(
    $date: json[r'$date'] as String,
  );
}

Map<String, dynamic> _$AddedOnToJson(AddedOn instance) => <String, dynamic>{
      r'$date': instance.$date,
    };

CreatedOn _$CreatedOnFromJson(Map<String, dynamic> json) {
  return CreatedOn(
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$CreatedOnToJson(CreatedOn instance) => <String, dynamic>{
      'date': instance.date,
    };

AssignedTo _$AssignedToFromJson(Map<String, dynamic> json) {
  return AssignedTo(
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$AssignedToToJson(AssignedTo instance) =>
    <String, dynamic>{
      'date': instance.date,
    };

Alias _$AliasFromJson(Map<String, dynamic> json) {
  return Alias(
    name: json['name'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    language: json['language'] as String,
  );
}

Map<String, dynamic> _$AliasToJson(Alias instance) => <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'language': instance.language,
    };

Devices _$DevicesFromJson(Map<String, dynamic> json) {
  return Devices(
    id: json['id'] as String,
    pin: json['pin'] as String,
    status: json['status'] as String,
    accountId: json['accountId'] as String,
    rentedOn: json['rentedOn'] == null
        ? null
        : AddedOn.fromJson(json['rentedOn'] as Map<String, dynamic>),
    rentedState: json['rentedState'] as String,
    returnedOn: json['returnedOn'] == null
        ? null
        : AddedOn.fromJson(json['returnedOn'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DevicesToJson(Devices instance) => <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'pin': instance.pin,
      'rentedOn': instance.rentedOn,
      'rentedState': instance.rentedState,
      'returnedOn': instance.returnedOn,
      'status': instance.status,
    };

Accounts _$AccountsFromJson(Map<String, dynamic> json) {
  return Accounts(
    id: json['id'] as String,
    balance: json['balance'] as int,
    number: json['number'] as String,
    key: json['key'] as String,
    tag: json['tag'] as String,
    status: json['status'] as String,
    createdOn: json['created_on'] == null
        ? null
        : AddedOn.fromJson(json['created_on'] as Map<String, dynamic>),
    devices: (json['devices'] as List)
        ?.map((e) =>
            e == null ? null : Devices.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$AccountsToJson(Accounts instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'key': instance.key,
      'balance': instance.balance,
      'tag': instance.tag,
      'status': instance.status,
      'type': instance.type,
      'devices': instance.devices,
      'created_on': instance.createdOn,
    };

Amount _$AmountFromJson(Map<String, dynamic> json) {
  return Amount(
    numberLong: json['numberLong'] as String,
  );
}

Map<String, dynamic> _$AmountToJson(Amount instance) => <String, dynamic>{
      'numberLong': instance.numberLong,
    };

Charges _$ChargesFromJson(Map<String, dynamic> json) {
  return Charges(
    numberLong: json['numberLong'] as String,
  );
}

Map<String, dynamic> _$ChargesToJson(Charges instance) => <String, dynamic>{
      'numberLong': instance.numberLong,
    };

Receipts _$ReceiptsFromJson(Map<String, dynamic> json) {
  return Receipts(
    id: json['id'] as String,
    title: json['title'] as String,
    amount: json['amount'] as int,
    charges: json['charges'] as int,
  );
}

Map<String, dynamic> _$ReceiptsToJson(Receipts instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'charges': instance.charges,
    };

OpenedOn _$OpenedOnFromJson(Map<String, dynamic> json) {
  return OpenedOn(
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$OpenedOnToJson(OpenedOn instance) => <String, dynamic>{
      'date': instance.date,
    };

HandledBy _$HandledByFromJson(Map<String, dynamic> json) {
  return HandledBy(
    operator: json['operator'] as String,
    date: json['date'] == null
        ? null
        : AddedOn.fromJson(json['date'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HandledByToJson(HandledBy instance) => <String, dynamic>{
      'operator': instance.operator,
      'date': instance.date,
    };

Tickets _$TicketsFromJson(Map<String, dynamic> json) {
  return Tickets(
    id: json['id'] as String,
    status: json['status'] as String,
    openedOn: json['openedOn'] == null
        ? null
        : AddedOn.fromJson(json['openedOn'] as Map<String, dynamic>),
    topic: json['topic'] as String,
    handledBy: (json['handledBy'] as List)
        ?.map((e) =>
            e == null ? null : HandledBy.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : Messages.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TicketsToJson(Tickets instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'openedOn': instance.openedOn,
      'topic': instance.topic,
      'handledBy': instance.handledBy,
      'messages': instance.messages,
    };

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return Messages(
    id: json['id'] as String,
    sentBy: json['sentBy'] as String,
    sentOn: json['sentOn'] == null
        ? null
        : AddedOn.fromJson(json['sentOn'] as Map<String, dynamic>),
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$MessagesToJson(Messages instance) => <String, dynamic>{
      'id': instance.id,
      'sentBy': instance.sentBy,
      'sentOn': instance.sentOn,
      'body': instance.body,
    };
