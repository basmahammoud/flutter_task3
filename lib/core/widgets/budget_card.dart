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

    final size =  MediaQuery.sizeOf(context);

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: SizedBox(
        height: size.height * 0.18,
        child: Container(
          width: size.width * 0.8,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(height: 10),

              Text(
                amount,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

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
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
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
