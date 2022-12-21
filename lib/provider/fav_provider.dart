import 'package:flutter/material.dart';

class FavProvider extends ChangeNotifier {
  List<String> _words = [];
  List<String> get words => _words;

  void toggleFav(String word) {
    final exist = _words.contains(word);
    if (exist) {
      _words.remove(word);
    } else {
      _words.add(word);
    }
    notifyListeners();
  }

  void clearFav(){
    _words = [];
    notifyListeners();
  }

}
