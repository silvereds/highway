class User {
  String uuid;
  String name;
  String email;
  String phoneNumber;
  String status;
  String preferredLanguage;
  String photoUrl;
  String address;
  String bornOn;
  String registeredOn;
  String organisation;
  String city;
  String gender;
  String subdivision;
  String idUrl;
  String proofOfAddressUrl;
  String role;
  String authorization;
  String agent = "mobile";

  User(
      {this.name,
      this.address,
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
      this.agent}) {
    this.agent = "mobile";
  }

  factory User.fromJson(Map<String, dynamic> json) => User(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      status: json['status'] as String,
      preferredLanguage: json['preferredLanguage'] as String,
      photoUrl: json['photoUrl'] as String,
      address: json['address'] as String,
      bornOn: json['bornOn'] as String,
      registeredOn: json['registeredOn'] as String,
      organisation: json['organisation'] as String,
      city: json['city'] as String,
      gender: json['gender'] as String,
      subdivision: json['subdivision'] as String,
      idUrl: json['idUrl'] as String,
      proofOfAddressUrl: json['proofOfAddressUrl'] as String,
      role: json['role'] as String,
      authorization: json['Authorization'],
      agent: json['agent']);

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'name': name,
        'email': email,
        'phoneNumber': phoneNumber,
        'status': status,
        'preferredLanguage': preferredLanguage,
        'photoUrl': photoUrl,
        'address': address,
        'bornOn': bornOn,
        'registeredOn': registeredOn,
        'organisation': organisation,
        'city': city,
        'gender': gender,
        'subdivision': subdivision,
        'idUrl': idUrl,
        'proofOfAddressUrl': proofOfAddressUrl,
        'role': role,
        'authorization': authorization,
        'agent': authorization
      };
}
