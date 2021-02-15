class Geolocation {
  int id;
  String itemId;
  String category;
  String latitude;
  String longitude;
  String status;
  String lastSeen;

  Geolocation({
    this.id,
    this.itemId,
    this.category,
    this.latitude,
    this.longitude,
    this.status,
    this.lastSeen,
  });

  factory Geolocation.fromJson(Map<String, dynamic> json) => Geolocation(
        id: json['id'] as int,
        itemId: json['itemId'] as String,
        category: json['category'] as String,
        latitude: json['latitude'] as String,
        longitude: json['longitude'] as String,
        status: json['status'] as String,
        lastSeen: json['lastSeen'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'itemId': itemId,
        'category': category,
        'latitude': latitude,
        'longitude': longitude,
        'status': status,
        'lastSeen': lastSeen,
      };
}
