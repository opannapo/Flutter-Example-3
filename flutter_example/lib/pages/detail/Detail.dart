import 'package:flutter/material.dart';
import 'package:flutter_example/entities/BaseTimelineEntity.dart';
import 'package:flutter_example/entities/UserEntity.dart';
import 'package:flutter_example/pages/detail/DetailView.dart';
import 'package:flutter_example/utils/API.dart';

class Detail extends StatefulWidget {
  var keyScaffold = new GlobalKey<ScaffoldState>();
  ScrollController listControl;

  List<BaseTimelineEntity> timeline;
  UserEntity user;
  bool isLoading = true;
  bool isTheEnd = false;

  Detail(this.user);

  @override
  State<StatefulWidget> createState() {
    return new DetailState();
  }
}

class DetailState extends State<Detail>
    with TickerProviderStateMixin
    implements DetailAction {
  @override
  void initState() {
    super.initState();
    widget.timeline = new List();
    widget.listControl = new ScrollController();
    widget.listControl.addListener(() {
      _scrollListener();
    });
    loadApi();
  }

  @override
  void dispose() {
    widget.keyScaffold.currentState.dispose();
    widget.listControl.dispose();
    widget.timeline = null;
    widget.isLoading = null;
    widget.isTheEnd = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => new DetailView(this, widget);

  @override
  void onLeftMenuClick() {
    Navigator.of(context).pop();
  }

  @override
  void onRightMenuClick() {
    showSnackbar('Settings...');
  }

  @override
  void onItemClicked(int index) {
    // TODO: implement onItemClicked
  }

  void showSnackbar(String msg) {
    final snackBar = SnackBar(
      content: Text('${msg}'),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
    );
    widget.keyScaffold.currentState.showSnackBar(snackBar);
  }

  Future<void> loadApi() {
    return API.getTimeline().then((data) {
      setState(() {
        widget.timeline.addAll(data);
        widget.isLoading = false;
      });
    }).catchError((e) => onFailure(e));
  }

  void onFailure(e) {
    print(e);
    showSnackbar(e.toString());
    setState(() {
      widget.isLoading = false;
    });
  }

  _scrollListener() {
    print(widget.listControl.offset);
    if (widget.listControl.offset >=
            widget.listControl.position.maxScrollExtent &&
        !widget.listControl.position.outOfRange) {}
    if (widget.listControl.offset <=
            widget.listControl.position.minScrollExtent &&
        !widget.listControl.position.outOfRange) {}
  }
}
