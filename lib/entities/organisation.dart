class Organisation {
  String id;
  String uuid;
  String contactPersonId;
  String name;
  String industry;
  String size;
  String status;
  String photoUrl;
  String address;
  String foundedOn;
  String contactPersonRole;
  String businessLicenceUrl;
  String proofOfAddressUrl;


 Organisation({
   this.id,
   this.uuid,
   this.contactPersonId,
   this.name,
   this.industry,
   this.size,
    this.status,
    this.photoUrl,
    this.address,
    this.foundedOn,
    this.contactPersonRole,
    this.businessLicenceUrl,
    this.proofOfAddressUrl, 

 }); 


 factory Organisation.fromJson(Map<String, dynamic> json) => Organisation(
   
  id: json['id'] as String,
  uuid: json['uuid'] as String,
  contactPersonId:  json['contactPersonId'] as String,
  name: json['name'] as String, 
  industry: json['industry'] as String,
  size:  json['size'] as String,
  status: json['status'] as String, 
  photoUrl:   json['photoUrl'] as String,
  address:  json['address'] as String,
  foundedOn: json['foundedOn'] as String, 
  contactPersonRole:   json['contactPersonRole'] as String,
  businessLicenceUrl:  json['businessLicenceUrl'] as String,
  proofOfAddressUrl: json['proofOfAddressUrl'] as String,

 );
 
 Map<String, dynamic> toJson() => {

   'id': id, 
   'uuid': uuid,
   'contactPersonId': contactPersonId, 
   'name': name, 
   'industry': industry,
   'size': size,
   'status': status,
   'photoUrl': photoUrl, 
   'address': address, 
   'foundedOn': foundedOn,
   'contactPersonRole': contactPersonRole, 
   'businessLicenceUrl': businessLicenceUrl, 
   'proofOfAddressUrl': proofOfAddressUrl


 };




}

 