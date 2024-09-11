import 'dart:io';

int factorial(int num) {
  int fact = 1;
  for (int i = 2; i <= num; i++) {
    fact *= i;
  }
  return fact;
}

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print("Enter a number to calculate its factorial:");
  int num = int.parse(stdin.readLineSync()!);
  int fact = factorial(num);
  print("Factorial of $num is $fact");

  print("Enter a number to check if it is prime:");
  int nums = int.parse(stdin.readLineSync()!);
  if (isPrime(nums)) {
    print("$nums is a prime number.");
  } else {
    print("$nums is not a prime number.");
  }
}
