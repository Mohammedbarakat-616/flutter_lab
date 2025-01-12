import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Color _color = Colors.white;

  Color get color => _color;

  void changeColor(Color newColor) {
    _color = newColor;
    notifyListeners(); // تحديث الواجهة عند تغيير الحالة
  }
}
