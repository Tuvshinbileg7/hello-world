int power(int a, int n) {
  int b = 1;
  for (int i = 1; i <= n; i++) {
    b = b * a;
  }
  return b;
}

void main() {
  var too = 153;
  var too1 = too, too2 = 0, too3 = 0, digit, i = 0;

  while (too2 < too) {
    while (too1 > 0) {
      digit = too1 % 10;
      too3 = too3 + power(digit, i);
      too1 = too1 ~/ 10;
    }
    too1 = too;
    too2 = too3;
    too3 = 0;
    i++;
  }
  if (too2 == too) {
    print('$too нь Армстронгийн тоо мөн');
  } else {
    print('$too нь Армстронгийн тоо биш');
  }
}
