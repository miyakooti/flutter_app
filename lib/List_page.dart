import "package:flutter/material.dart";

class ListPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('次の画面'),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    print("ああああ");
    return true;
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: Text("ListPage"),
  //       ),
  //       body: ListView.builder(
  //           padding: const EdgeInsets.all(8),
  //           itemCount: entries.length,
  //           itemBuilder: (BuildContext context, int index) {
  //             return Container(
  //               color: Colors.amber[colorCodes[index]],
  //               child: Padding(
  //                 padding: const EdgeInsets.all(10.0),
  //                 child: Center(
  //                     child: Text('Entry ${entries[index]}',
  //                         style: TextStyle(fontSize: 50))),
  //               ),
  //             );
  //           }));
  // }
}
