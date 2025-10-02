import 'package:flutter/foundation.dart';

class FavouriteProvider extends ChangeNotifier {
  List<int> _favouriteItem = [];
  List<int> get favouriteItem => _favouriteItem;
  void addFavourite(int item) {
    _favouriteItem.add(item);
    notifyListeners();
  }

  void removeFavourite(int item) {
    _favouriteItem.remove(item);
    notifyListeners();
  }
}
