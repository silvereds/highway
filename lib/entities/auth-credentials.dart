class AuthCredentials {
  String email;
  String phoneNumber;
  String password;
  String passcode;
  String agent = "mobile";

  AuthCredentials(
      {this.email,
      this.phoneNumber,
      this.password,
      this.passcode,
      this.agent}) {
    this.agent = "mobile";
  }

  AuthCredentials.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        phoneNumber = json['phoneNumber'],
        password = json['password'],
        passcode = json['passcode'],
        agent = json['agent'];

  Map<String, dynamic> toJson() => {
        'email': email,
        'phoneNumber': phoneNumber,
        'password': password,
        'passcode': passcode,
        'agent': agent,
      };
}
