import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_task3/core/widgets/budget_card.dart';
import 'package:flutter_task3/core/widgets/detalies_budget_card.dart';

class Budget extends StatelessWidget {
  const Budget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.02),
              LayoutBuilder(
                builder: (context, constraints) {
                  final isTablet = constraints.maxWidth >= 600;
                    return SizedBox(
                    width: isTablet
                        ? 500
                        : constraints.maxWidth * 0.9,
                    child: BudgetCard(
                      title: "TOTAL BUDGET",
                      amount: "1,250.50",
                      remaining: "remaining/4000",
                    ),
                    );
                },
              ),
              SizedBox(height: size.height * 0.03),
              DetaliesBudgetCard(
                title: "Food",
                spent: "spent: 450/600 AED",
                icon: Icons.fastfood,
                num: '75',
              ),

              SizedBox(height: size.height * 0.03),

              DetaliesBudgetCard(
                title: "Travel",
                spent: "spent: 1000/1500 AED",
                icon: Icons.card_travel,
                num: '75',
              ),

              SizedBox(height: size.height * 0.03),

              DetaliesBudgetCard(
                title: "Travel",
                spent: "spent: 1000/1500 AED",
                icon: Icons.card_travel,
                num: '75',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
