import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class AuthProvider with ChangeNotifier {
  bool _Loading = false;
  bool get Loading => _Loading;
  setLoading(bool value) {
    _Loading = value;
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    setLoading(true);
    try {
      Response response = await post(
        Uri.parse("https://dummyjson.com/auth/login"),
        body: {"username": email, "password": password},
      );
      if (response.statusCode == 200) {
        setLoading(false);
        print("Login successful");
      } else {
        print("Login failed");
        setLoading(false);
      }
    } catch (e) {
      print(e.toString());
      setLoading(false);
    }
  }
}
