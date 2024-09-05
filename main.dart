import 'dart:io';

void main() {
  String word = "";
  int sum = 0, n = 0;

  while (word != "stop") {
    print("Enter a number: ");
    word = stdin.readLineSync()!;
    if (word == "stop") break;
    sum += int.parse(word);
    n++;
  }

  print("Sum: $sum\nAverage: ${sum / n}");

  print("Enter a number of be factorial: ");
  int n = int.parse(stdin.readLineSync()!);
  print('Factorial of $n is ${calculatedFactorial(n)}');

  print("Enter string: ");
  String wordPal = stdin.readLineSync()!;
  print(
      'The word $wordPal is ${isPalindrome(wordPal) ? 'palindrome' : 'not palindrome'}.');
}

int calculatedFactorial(int n) {
  int f = 1;
  if (n == 0) return 1;

  for (int i = 1; i <= n; i++) f *= i;

  return f;
}

bool isPalindrome(String word) {
  for (int i = 0; i < word.length / 2; i++) {
    if (word[i] == word[word.length - (i + 1)]) {
      continue;
    } else {
      return false;
    }
  }

  return true;
}
