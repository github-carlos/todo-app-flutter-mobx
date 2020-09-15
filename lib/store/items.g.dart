// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Items on ItemsBase, Store {
  final _$itemsAtom = Atom(name: 'ItemsBase.items');

  @override
  ObservableList<Item> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<Item> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$ItemsBaseActionController = ActionController(name: 'ItemsBase');

  @override
  void addItem(Item item) {
    final _$actionInfo =
        _$ItemsBaseActionController.startAction(name: 'ItemsBase.addItem');
    try {
      return super.addItem(item);
    } finally {
      _$ItemsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setChecked(bool checked, int index) {
    final _$actionInfo =
        _$ItemsBaseActionController.startAction(name: 'ItemsBase.setChecked');
    try {
      return super.setChecked(checked, index);
    } finally {
      _$ItemsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items}
    ''';
  }
}
