// ignore: file_names, depend_on_referenced_packages
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class AddressInfo extends Equatable {
  late final String? province;
  late final String? district;
  late final String? ward;
  late final String? street;

  AddressInfo({
    this.province,
    this.district,
    this.ward,
    this.street,
  });

  factory AddressInfo.fromMap(Map<String, dynamic> map) {
    return AddressInfo(
      province: map['province'],
      district: map['district'],
      ward: map['ward'],
      street: map['street'],
    );
  }

  @override
  List<Object?> get props => [province, district, ward, street];
}

class UserInfo extends Equatable {
  late final String? name;
  final String? email;
  final String? phoneNumber;
  final DateTime? birthDate;
  final AddressInfo? address;

  UserInfo({
    this.name,
    this.email,
    this.phoneNumber,
    this.birthDate,
    this.address,
  });

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      name: map['name'],
      email: map['email'],
      phoneNumber: map['phoneNumber'],
      birthDate: map['birthDate'],
      address: AddressInfo.fromMap(map['address']),
    );
  }

  @override
  List<Object?> get props => [name, email, phoneNumber, birthDate, address];
}
