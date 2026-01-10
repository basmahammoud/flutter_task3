import 'package:flutter/material.dart';

class BudgetCard extends StatelessWidget {
  final String title;
  final String remaining;
  final String amount;

  const BudgetCard({
    super.key,
    required this.title,
    required this.remaining,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: SizedBox(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 12.0,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),

              Text(
                amount,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: remaining,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const TextSpan(
                      text: " AED",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
