import 'package:flutter/material.dart';
import 'package:flutter_example/entities/BaseTimelineEntity.dart';
import 'package:flutter_example/entities/TimelineProductEntity.dart';
import 'package:flutter_example/styles/StyleConst.dart';

class TimelineListProduct extends StatelessWidget {
  TimelineProductEntity timeline;
  VoidCallback clicked;

  TimelineListProduct(this.timeline, this.clicked);

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: new Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: new DecorationImage(
              image: new NetworkImage(timeline.image ?? ''),
              fit: BoxFit.cover,
            ),
          ),
          child: new Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                gradient: new LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.6, 0.80],
                  colors: [
                    Colors.transparent,
                    const Color(0xFF000000).withOpacity(0.7),
                  ],
                ),
              ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(10),
                    child: new Text(timeline.name,
                        textAlign: TextAlign.justify,
                        style: TextStyleConst.b14(
                            color: Colors.white, letterSpacing: 1)),
                  )
                ],
              )),
        ));
  }
}
