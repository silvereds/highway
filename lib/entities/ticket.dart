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

  factory Ticket.fromJson(Map<String, dynamic> json) => Ticket(

=======
        id: json['id'] as int,

        openedOn: json['openedOn'] as String,
        topic: json['topic'] as String,
        openedBy: json['openedBy'] as String,
        handledBy: json['handledBy'] as String,
        status: json['status'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'openedOn': openedOn,
        'topic': topic,
        'openedBy': openedBy,
        'handledBy': handledBy,
        'status': status
      };
}
