import 'package:flutter/material.dart';
import 'package:flutter_task3/core/widgets/budget_card.dart';
import 'package:flutter_task3/core/widgets/detalies_budget_card.dart';

class Budget extends StatelessWidget {
  const Budget({super.key});

  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: size.height*0.02,),
          Align(
            alignment: Alignment.topCenter,
            child:  BudgetCard(
              title:"TOTAL BUDGET",
              amount: "1,250.50",
              remaining: "remaining/4000",
            ),
          ),
          SizedBox(height: size.height*0.03,),
          DetaliesBudgetCard(
              title: "Food",
              spent: "spent: 450/600 AED",
              icon: Icons.fastfood,
              num: '75',),

          SizedBox(height: size.height*0.03,),

          DetaliesBudgetCard(
            title: "Travel",
            spent: "spent: 1000/1500 AED",
            icon: Icons.card_travel,
            num: '75',),

          SizedBox(height: size.height*0.03,),

          DetaliesBudgetCard(
            title: "Travel",
            spent: "spent: 1000/1500 AED",
            icon: Icons.card_travel,
            num: '75',),
        ],
      ),
      ),
    );
  }
}