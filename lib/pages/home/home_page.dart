import 'package:flutter/material.dart';
import 'package:hola/pages/home/home_page_checkbox_scaffold.dart';
import 'package:hola/pages/home/home_page_counter_column.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: HomePageCounterColumn(),
            ),
            Expanded(
              child: Container(
                color: Colors.green[100],
                child: Center(child: HomePageCheckBoxColumn()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
