import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_example/components/BaseAppBar.dart';
import 'package:flutter_example/components/TimelineListItem.dart';
import 'package:flutter_example/pages/detail/Detail.dart';
import 'package:flutter_example/styles/StyleConst.dart';
import 'package:intl/intl.dart';

class DetailView extends StatelessWidget {
  DetailAction act;
  Detail widget;

  DetailView(this.act, this.widget);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: widget.keyScaffold,
      backgroundColor: Colors.white,
      appBar: BaseToolBar(
        title: widget.user?.name ?? 'Name',
        leftIcon: Icons.arrow_back_ios,
        onLeftPress: act.onLeftMenuClick,
        rightIcon: Icons.settings,
        onRightPress: act.onRightMenuClick,
      ).build(context),
      body: new SingleChildScrollView(
          primary: true,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Hero(
                tag: "userImageHeroTag-${widget.user.name}",
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new NetworkImage(widget.user?.photo ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              new Container(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            widget.user?.name ?? 'Name',
                            style: TextStyleConst.b16(color: Colors.black),
                          ),
                          new Container(
                            child: new Row(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new Text(
                                      'Followers ',
                                      style: TextStyleConst.n12(
                                          color: Colors.black),
                                    ),
                                    new Text(
                                      '${new NumberFormat("#,###").format(widget.user?.followers)}' ??
                                          'Name',
                                      style: TextStyleConst.b12(
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                                new Container(
                                  height: 15,
                                  width: 0.5,
                                  color: Colors.grey,
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                ),
                                new Row(
                                  children: <Widget>[
                                    new Text(
                                      'Following ',
                                      style: TextStyleConst.n12(
                                          color: Colors.black),
                                    ),
                                    new Text(
                                      '${new NumberFormat("#,###").format(widget.user?.following)}' ??
                                          'Name',
                                      style: TextStyleConst.b12(
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: new Text(
                        widget.user?.bio ?? 'Description',
                        style: TextStyleConst.n12(
                          color: Colors.black.withOpacity(0.8),
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    new Container(
                      height: 0.2,
                      width: double.infinity,
                      color: Colors.grey,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    ),
                  ],
                ),
              ),
              widget.isLoading
                  ? new Center(
                      child: new Container(
                      margin: EdgeInsets.all(40),
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 0.8,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ))
                  : new Container(
                      width: MediaQuery.of(context).size.width,
                      child: new ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: widget.timeline.length,
                          itemBuilder: (BuildContext context, int index) {
                            return new TimelineListItem(widget.timeline[index],
                                () => act.onItemClicked(index));
                          }),
                    )
            ],
          )),
    );
  }
}

abstract class DetailAction {
  void onRightMenuClick();

  void onLeftMenuClick();

  void onItemClicked(int index);
}
