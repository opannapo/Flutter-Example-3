import 'package:flutter/material.dart';
import 'package:flutter_example/components/TimelineListPeople.dart';
import 'package:flutter_example/components/TimelineListProduct.dart';
import 'package:flutter_example/components/TimelineListRecom.dart';
import 'package:flutter_example/entities/BaseTimelineEntity.dart';
import 'package:flutter_example/entities/TimelinePeopleEntity.dart';
import 'package:flutter_example/entities/TimelineProductEntity.dart';

class TimelineListItem extends StatelessWidget {
  BaseTimelineEntity timeline;
  VoidCallback clicked;

  TimelineListItem(this.timeline, this.clicked);

  @override
  Widget build(BuildContext ctx) {
    if (timeline is TimelinePeopleEntity) {
      return new TimelineListPeople(timeline, clicked);
    } else if (timeline is TimelineProductEntity) {
      return new TimelineListProduct(timeline, clicked);
    } else {
      return new TimelineListRecom(timeline, clicked);
    }
  }
}
