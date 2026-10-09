// TMA3084 Lab 1 (103041)
// Pizza Order Calculator

import 'dart:io';

void main() {
  print("====================================================");
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  int totalPayment = 0;
  String? keepOrdering = 'y';

  // Loop to allow multiple pizza sizes in one order
  while (keepOrdering == 'y') {
    print("Please enter your pizza size (small, medium, or large):");
    String? pizza_size = stdin.readLineSync();

    print("How many pizzas do you want of $pizza_size?");
    int quantity = int.parse(stdin.readLineSync()!);

    int price = 0;

    switch (pizza_size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print("Wrong size entered");
        break;
    }

    totalPayment = totalPayment + (price * quantity);

    print("Do you want to add another pizza size? (y/n)");
    keepOrdering = stdin.readLineSync();
  }

  print("Your Total Payment is: \$$totalPayment");
}
