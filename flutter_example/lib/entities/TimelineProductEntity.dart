import 'package:flutter_example/entities/BaseTimelineEntity.dart';

class TimelineProductEntity extends BaseTimelineEntity {
  int id;
  String name;
  String desc;
  int price;
  String image;

  TimelineProductEntity({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.image,
  });

  factory TimelineProductEntity.fromJson(Map<String, dynamic> json) {
    print('TimelineProductEntity PARSING ${json}');

    return new TimelineProductEntity(
        id: json['id'] as int,
        name: json['name'] as String,
        desc: json['desc'] as String,
        price: json['price'] as int,
        image: json['image'] as String);
  }
}
