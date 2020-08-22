import 'dart:math';

class BMICalculator {
  double res;
  String result(int height, int weight) {
    res = weight / pow(height / 100, 2);
    return res.toStringAsFixed(1);
  }

  String bmires() {
    if (res >= 25) {
      return 'OverWeight';
    } else {
      if (res <= 15) {
        return 'Too Low';
      } else {
        return 'Normal';
      }
    }
  }

  String intepretation() {
    if (res >= 25) {
      return 'Your Weight is high! Please Do Exercise.';
    } else {
      if (res <= 15) {
        return 'Your Weight is too Low! Increase your Weight';
      } else {
        return 'You are Fit! Keep it up!';
      }
    }
  }
}
