import 'package:flutter/material.dart';
import 'package:flutter_example/entities/BaseTimelineEntity.dart';
import 'package:flutter_example/entities/TimelinePeopleEntity.dart';

class TimelineListPeople extends StatelessWidget {
  TimelinePeopleEntity timeline;
  VoidCallback clicked;

  TimelineListPeople(this.timeline, this.clicked);

  @override
  Widget build(BuildContext ctx) {
    return new Container(
        height: 60,
        padding: EdgeInsets.all(0),
        color: Colors.white,
        child: new ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: timeline.users.length,
            itemBuilder: (BuildContext context, int index) {
              return new Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: new DecorationImage(
                      image:
                          new NetworkImage(timeline.users[index]?.photo ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ));
            }));
  }
}
