import 'package:flutter_example/entities/BaseTimelineEntity.dart';

class TimelinePeopleEntity2 extends BaseTimelineEntity {
  String name;
  String bio;
  int followers;
  int following;
  String photo;
  Address address;

  TimelinePeopleEntity2(
      {this.name,
      this.bio,
      this.followers,
      this.following,
      this.photo,
      this.address});

  factory TimelinePeopleEntity2.fromJson(Map<String, dynamic> json) {
    print('JSONNNNNNN PARSING ${json}');
    Address address = Address.fromJson(json['address']);

    return new TimelinePeopleEntity2(
        name: json['name'] as String,
        bio: json['bio'] as String,
        followers: json['followers'] as int,
        following: json['following'] as int,
        photo: json['photo'] as String,
        address: address);
  }
}

class Address {
  String address;
  String city;
  String region;
  String area;

  Address({this.address, this.city, this.region, this.area});

  factory Address.fromJson(Map<String, dynamic> json) {
    return new Address(
        address: json['address'] as String,
        city: json['city'] as String,
        region: json['region'] as String,
        area: json['area'] as String);
  }
}
