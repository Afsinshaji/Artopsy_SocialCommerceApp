import 'dart:developer';

class ShoppingAddress {
  final String name;
  final String addressId;
  final String phoneNumber;
  final String pincode;
  final String address;
  final String district;
  final String state;
  const ShoppingAddress({
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.pincode,
    required this.district,
    required this.state,
    required this.addressId,
  });
  Map<String, dynamic> toJson() {
    DateTime now = DateTime.now();
    String timeStamp = now.microsecondsSinceEpoch.toString();
    return {
      'name': name,
      'address': address,
      'phoneNumber': phoneNumber,
      'pincode': pincode,
      'district': district,
      'state': state,
      'addressId': timeStamp,
    };
  }

  static ShoppingAddress fromJson(Map json) {
    log('json');
   
    return ShoppingAddress(
        name: json['name'],
        addressId: json['addressId'],
        address: json['address'],
        phoneNumber: json['phoneNumber'],
        pincode: json['pincode'],
        district: json['district'],
        state: json['state']);
  }
}
