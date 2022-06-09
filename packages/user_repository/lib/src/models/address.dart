import 'package:equatable/equatable.dart';

class Address extends Equatable {
  const Address({
    required this.id,
    required this.address,
    required this.city,
    required this.postalCode,
    required this.country,
  });

  final int id;
  final String address;
  final String city;
  final String postalCode;
  final Country country;

  static const empty = Address(
    id: 0,
    address: '',
    city: '',
    postalCode: '',
    country: Country.empty,
  );

  @override
  List<Object> get props => [
        id,
        address,
        city,
        postalCode,
        country,
      ];
}

class Country extends Equatable {
  const Country({
    required this.id,
    required this.name,
    required this.alpha2,
  });

  final int id;
  final String name;
  final String alpha2;

  static const empty = Country(
    id: 0,
    name: '',
    alpha2: '',
  );

  @override
  List<Object> get props => [
        id,
        name,
        alpha2,
      ];
}
