import 'package:flutter_example/entities/BaseTimelineEntity.dart';
import 'package:flutter_example/entities/UserEntity.dart';

class TimelinePeopleEntity extends BaseTimelineEntity {
  List<UserEntity> users;

  TimelinePeopleEntity({this.users});

  factory TimelinePeopleEntity.fromJsonArray(jsonArray) {
    try {
      var items = jsonArray['people'] as List;
      List<UserEntity> us =
          items.map((data) => new UserEntity.fromJson(data)).toList();
      return new TimelinePeopleEntity(users: us);
    } catch (e) {
      print('TimelinePeopleEntity ERROR ' + e.toString());
      throw e;
    }
  }
}
