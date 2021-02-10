class Payment {
  int id;
  String  status;
  String  provider;
  String  amount;
  String  from;
  String  to;
  String  dateOn;

 Payment({
   this.id,
   this.status,
   this.provider,
   this.amount,
   this.from,
   this.to, 
   this.dateOn, 

 });


 factory Payment.fromJson(Map<String, dynamic> json) => Payment(
   id: json['id'] as int,
   status: json['status'] as String,
   provider: json['provider'] as String,
   amount: json['amount'] as String,
   from: json['from'] as String,
   to: json['to'] as String,
   dateOn: json['dateOn'] as String,
   
 );


 Map<String, dynamic> toJson() => {
   'id': id,
   'status': status,
   'provider': provider,
   'amount': amount,
   'from': from, 
   'dateOn': dateOn

 };


  }