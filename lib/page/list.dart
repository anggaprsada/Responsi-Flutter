import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    const numItems = 20;
    const _biggerFont = TextStyle(fontSize: 15.0);

    return Scaffold(
      body: ListView.separated(
        itemCount: numItems,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(
              'Item ${index + 1}',
              style: _biggerFont,
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }

  static separated(
      {required int itemCount,
      required ListTile Function(dynamic context, dynamic index) itemBuilder,
      required Divider Function(dynamic context, dynamic index)
          separatorBuilder}) {}
}
