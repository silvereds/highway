class AuthCredentials {
  String email;
  String phoneNumber;
  String password;
  String passcode;

  AuthCredentials({this.email, this.phoneNumber, this.password, this.passcode});

  AuthCredentials.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        phoneNumber = json['phoneNumber'],
        password = json['password'],
        passcode = json['passcode'];

  Map<String, dynamic> toJson() => {
        'email': email,
        'phoneNumber': phoneNumber,
        'password': password,
        'passcode': passcode
      };
}
