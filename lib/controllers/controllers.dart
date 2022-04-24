import 'package:flutter/widgets.dart';

class AgeController extends ChangeNotifier {
  bool isEligible = false;
  String mssg = '';
  void checker(int age) {
    if (age <= 16) {
      isEligible = false;
      mssg = 'You are not eligible to drive';
      notifyListeners();
    } else if (age > 70) {
      isEligible = false;
      mssg = 'You are so old age to drive';
      notifyListeners();
    } else {
      isEligible = true;
      mssg = 'You are eligible to drive';
      notifyListeners();
    }
  }
}
