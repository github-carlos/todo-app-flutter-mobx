// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Item on ItemBase, Store {
  final _$checkedAtom = Atom(name: 'ItemBase.checked');

  @override
  bool get checked {
    _$checkedAtom.reportRead();
    return super.checked;
  }

  @override
  set checked(bool value) {
    _$checkedAtom.reportWrite(value, super.checked, () {
      super.checked = value;
    });
  }

  final _$ItemBaseActionController = ActionController(name: 'ItemBase');

  @override
  dynamic setChecked(bool value) {
    final _$actionInfo =
        _$ItemBaseActionController.startAction(name: 'ItemBase.setChecked');
    try {
      return super.setChecked(value);
    } finally {
      _$ItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
checked: ${checked}
    ''';
  }
}
