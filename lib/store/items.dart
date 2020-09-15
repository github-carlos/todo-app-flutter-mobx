import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:todo_app/models/item.dart';

part 'items.g.dart';

class Items = ItemsBase with _$Items;

abstract class ItemsBase with Store {
  @observable
  var items = ObservableList<Item>();

  ItemsBase() {}

  @computed
  int get numberOfFinished {
    return items.where((item) => item.checked).length;
  }

  @action
  void addItem(Item item) {
    items.add(item);
  }

  @action
  void setChecked(bool checked, int index) {
    items[index].setChecked(checked);
  }

  int get length {
    return items.length;
  }
}