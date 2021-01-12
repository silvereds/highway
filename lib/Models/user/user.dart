
class User{
  int id;
  String name;
  String email;
  String phoneNumber;
  String status; 
  String preferredLanguage;
  String photoUrl;
  String address;
  String localDate;
  String organisation;
  String city; 
  String gender; 
  String subdivision;
  String idUrl;
  String proofOfAddressUrl;
  String role; 


User({this.name, this.address, this.city,this.email, this.gender, this.id, this.idUrl, this.localDate, this.organisation, this.phoneNumber, this.photoUrl, this.preferredLanguage, this.proofOfAddressUrl, this.role, this.status, this.subdivision}); 

factory User.fromJSON(Map<String, dynamic> json) => User(
  id: json['id'] as int, 
 name: json['name'] as String, 
 phoneNumber: json['phoneNumber'] as String, 
 );





}

