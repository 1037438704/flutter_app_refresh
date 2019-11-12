import 'package:flutter/material.dart';
import 'package:flutter_app_refresh/page/HomeAty.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Flutter Refresh',
        home: HomeAty(),
      ),
    );
  }
}