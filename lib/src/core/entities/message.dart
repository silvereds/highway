class Message {
  int    id;
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

  factory Message.fromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as int,
      ticketId: json['ticketId'] as String,
      sentOn: json['sentOn'] as String,
      sender: json['sender'] as String,
      body: json['body'] as String,
      subject: json['subject'] as String,
      handledBy: json['handledBy'] as String,
      status: json['status'] as String);

  Map<String, dynamic> toJson() => {
        'id': id,
        'ticketId': ticketId,
        'sentOn': sentOn,
        'sender': sender,
        'body': body,
        'subject': subject,
        'handledBy': handledBy,
        'status': status,
      };
}
