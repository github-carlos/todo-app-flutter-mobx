import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'item.g.dart';

class Item = ItemBase with _$Item;

abstract class ItemBase with Store{
  String text;
  IconData icon;

  @observable
  bool checked;

  ItemBase({@required this.text, @required this.icon, this.checked = false});

  @action
  setChecked(bool value) {
    checked = value;
  }
}