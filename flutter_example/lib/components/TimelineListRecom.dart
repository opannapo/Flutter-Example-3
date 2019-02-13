import 'package:flutter/material.dart';
import 'package:flutter_example/entities/TimelineRecommendedEntity.dart';

class TimelineListRecom extends StatelessWidget {
  TimelineRecommendedEntity timeline;
  VoidCallback clicked;

  TimelineListRecom(this.timeline, this.clicked);

  @override
  Widget build(BuildContext ctx) {
    return new Container(
        height: 150,
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
        color: Colors.white,
        child: new ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: timeline.products.length,
            itemBuilder: (BuildContext context, int index) {
              return new Container(
                  width: 100,
                  height: 150,
                  margin: EdgeInsets.fromLTRB(20, 0, 5, 0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: new DecorationImage(
                      image: new NetworkImage(
                          timeline.products[index]?.image ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ));
            }));
  }
}
