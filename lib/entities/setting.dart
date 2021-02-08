class Setting {
  String id;
  String name;
  String value;
  String defaultValue;

  Setting({this.id, this.name, this.value, this.defaultValue});

  factory Setting.fromJson(Map<String, dynamic> json) => Setting(
        id: json['id'] as String,
        name: json['json'] as String,
        value: json['value'] as String,
        defaultValue: json['defaultValue'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'value': value,
        'defaultValue': defaultValue,
      };
}
