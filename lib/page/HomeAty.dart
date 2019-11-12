import 'package:flutter/material.dart';
import 'package:flutter_app_refresh/widget/sample_list_item.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class HomeAty extends StatefulWidget {
  @override
  _HomeAtyState createState() => _HomeAtyState();
}

class _HomeAtyState extends State<HomeAty> {
  // 总数
  int _count = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('刷新数据'),
          ),
          body: Center(
            child: EasyRefresh.custom(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return SampleListItem();
                    },
                    childCount: _count,
                  ),
                ),
              ],
              onRefresh: () async {
                await Future.delayed(Duration(seconds: 2), () {
                  setState(() {
                    _count = 20;
                  });
                });
              },
              onLoad: () async {
                await Future.delayed(Duration(seconds: 2), () {
                  setState(() {
                    _count += 20;
                  });
                });
              },
            ),
          )),
    );
  }
}
