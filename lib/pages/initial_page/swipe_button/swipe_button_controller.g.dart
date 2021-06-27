// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swipe_button_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SwipeButtonCotroller on _SwipeButtonCotrollerBase, Store {
  final _$loadingAtom = Atom(name: '_SwipeButtonCotrollerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$textAtom = Atom(name: '_SwipeButtonCotrollerBase.text');

  @override
  bool get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(bool value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$setLoadingAsyncAction =
      AsyncAction('_SwipeButtonCotrollerBase.setLoading');

  @override
  Future<void> setLoading(dynamic context) {
    return _$setLoadingAsyncAction.run(() => super.setLoading(context));
  }

  final _$_SwipeButtonCotrollerBaseActionController =
      ActionController(name: '_SwipeButtonCotrollerBase');

  @override
  void setText() {
    final _$actionInfo = _$_SwipeButtonCotrollerBaseActionController
        .startAction(name: '_SwipeButtonCotrollerBase.setText');
    try {
      return super.setText();
    } finally {
      _$_SwipeButtonCotrollerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
text: ${text}
    ''';
  }
}
