class ContactEntity {
  ContactEntity({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.createdAt,
    this.imagePath,
  });

  ContactEntity.fromJson(dynamic json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    createdAt = json['createdAt'];
    imagePath = json['imagePath'];
  }

  num? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  num? createdAt;
  String? imagePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['email'] = email;
    map['phoneNumber'] = phoneNumber;
    map['createdAt'] = createdAt;
    map['imagePath'] = imagePath;
    return map;
  }
}
