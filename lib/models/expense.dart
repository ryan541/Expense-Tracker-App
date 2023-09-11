import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining_rounded,
  Category.travel: Icons.flight,
  Category.leisure: Icons.movie,
  Category.work: Icons.work_outline_outlined,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}

//this class is for a specific category like leisure or food.
class ExpenseBucket {
  ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  //create a filter that sieves out expenses for a particular category

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  final Category category;
  //create a list called expenses from the Expense class
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;
    //create a variable that accesses the lists of Expenses and adds the expenses.amount
    for (final expenses in expenses) {
      sum = sum + expenses.amount;
    }

    return sum;
  }
}
