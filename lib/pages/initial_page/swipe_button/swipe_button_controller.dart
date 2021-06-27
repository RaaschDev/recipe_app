import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'swipe_button_controller.g.dart';

class SwipeButtonCotroller = _SwipeButtonCotrollerBase with _$SwipeButtonCotroller;

abstract class _SwipeButtonCotrollerBase with Store {
  @observable 
  bool loading = false;
  @observable
  bool text = true;

  @action
  Future<void> setLoading(context)async{
    setText();
    await Future.delayed(Duration(milliseconds: 50));
    loading = !loading;
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacementNamed(context, '/home');

  }
  @action
  void setText(){
    text = !text;
  }
}