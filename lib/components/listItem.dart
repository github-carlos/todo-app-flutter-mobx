import 'package:flutter/material.dart';

import '../constants.dart';

class ListItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool checked;
  final Function callback;

  ListItem({this.text, this.icon, this.checked, this.callback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text,
      style: TextStyle(
          decoration: checked ? TextDecoration.lineThrough : null
      ),),
      leading: Icon(this.icon, color: kPrimaryColor,),
      trailing: Checkbox(value: checked, onChanged: (value) => callback(value),),
    );
  }
}