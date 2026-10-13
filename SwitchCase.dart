import 'dart:io';

void main() {
  print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

  stdout.write('Please enter your pizza size ([S]=small, [M]=medium, or [L]=large): \n');
  String pizzaSize = (stdin.readLineSync() ?? '').trim();

  int price = 0;
  String sizeName = '';

  // Switch case
  switch (pizzaSize) {
    case 'S':
    case 's':
      price = 5;
      sizeName = 'Small';
      break;
    case 'M':
    case 'm':
      price = 7;
      sizeName = 'Medium';
      break;
    case 'L':
    case 'l':
      price = 10;
      sizeName = 'Large';
      break;
    default:
      print('Invalid pizza size!');
      return;
  }

  stdout.write('How many $sizeName pizzas do you want? \n');
  int? quantity = int.tryParse(stdin.readLineSync() ?? '');

  if (quantity == null || quantity <= 0) {
    print('Invalid quantity! Please enter again.');
  } else {
    int total = price * quantity;

    print('You ordered $quantity $sizeName pizza(s).');
    print('Your Total Payment is: \$$total');
  }
}