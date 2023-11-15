import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_stqa/utils/calculate_factorial_helper.dart';

void main() {
  test('Calculate factorial', () {
    // Test case: 5! should be 120
    expect(calculateFactorial(5), 120);

    // Test case: 0! should be 1
    expect(calculateFactorial(0), 1);

    // Test case: 1! should be 1
    expect(calculateFactorial(1), 1);

    // Test case: 3! should be 6
    expect(calculateFactorial(3), 6);
  });
}