import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_list/expense_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  State<ExpensesPage> createState() {
    return _ExpensesPageState();
  }
}

class _ExpensesPageState extends State<ExpensesPage> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "flutter Work",
      amount: 20.00,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "film",
      amount: 15.00,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text("The Chart"),
        Expanded(child: ExpensesList(expenses: _registeredExpenses)),
      ],
    ));
  }
}
