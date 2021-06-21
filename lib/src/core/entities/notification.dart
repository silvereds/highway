

class Notification {
    String  id;
  String  uuid;
  String  channel;
  String  category;
  String  receiver;
  String  user;
  String  status;
  String  title;
  String  body;
  String  sentOn;

  Notification({
    this.id, 
    this.uuid,
    this.channel,
    this.category,
    this.receiver,
    this.user,
    this.status,
    this.title,
    this.body,
    this.sentOn
  }); 


  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
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


      Map<String, dynamic> toJson() => {
      'id': id,
      'uuid': uuid,
      'channel': channel,
      'category': category,
      'receiver': receiver,
      'user': user,
      'status': status,
      'title': title, 
      'body': body,
      'sentOn' : sentOn

      };

}