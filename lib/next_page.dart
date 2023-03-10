import "package:flutter/material.dart";
import 'package:flutter_app/List_page.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(name),
        ),
        body: Center(
          child: Container(
            child: ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("実はもどらない"),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListPage()),
                  );
                }
                // 画面をもどる場合はこっち
                // onPressed: () {
                //   Navigator.pop(context, "戻ってくる時の値");
                // }
                ),
          ),
        ));
  }
}
