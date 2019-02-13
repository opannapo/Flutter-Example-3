import 'package:flutter_example/entities/TimelinePeopleEntity.dart';
import 'package:flutter_example/entities/TimelineProductEntity.dart';
import 'package:flutter_example/entities/TimelineRecommendedEntity.dart';

abstract class BaseTimelineEntity {
  BaseTimelineEntity();

  factory BaseTimelineEntity.fromJson(Map<String, dynamic> json) {
    if (json.containsKey("people")) {
      print('BaseTimelineEntity PARSING type PEOPLE : ${json}');
      return new TimelinePeopleEntity.fromJsonArray(json);
    } else if (json.containsKey("recommend")) {
      print('BaseTimelineEntity PARSING type RECOMMEND : ${json}');
      return new TimelineRecommendedEntity.fromJsonArray(json);
    } else {
      print('BaseTimelineEntity PARSING type DEFAULT : ${json}');
      return new TimelineProductEntity.fromJson(json);
    }
  }
}
