import 'package:flutter/material.dart';
import 'package:flutter_task3/core/bottom_sheets/show_modal_bottomSheet%20.dart';
import 'package:flutter_task3/core/widgets/transaction_card.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.03),
            Text(
              "Recent transaction",
              style: Theme.of(context).textTheme.titleLarge,
            ),
             SizedBox(height: size.height * 0.03),
             
            TransactionCard(
              icon: Icons.credit_card_rounded,
              title: "Concert Tickets",
              date: "April 23, 2024",
              amount: "-\$150.9",
            ),

            SizedBox(height: size.height * 0.02),

            TransactionCard(
              icon: Icons.car_rental,
              title: "Concert Tickets",
              date: "Mars 20, 2024",
              amount: "+\$350.9",
            ),

            SizedBox(height: size.height * 0.02),

            TransactionCard(
              icon: Icons.shop,
              title: "Concert Tickets",
              date: "April 23, 2024",
              amount: "-\$200.9",
            ),

            SizedBox(height: size.height * 0.02),

            TransactionCard(
              icon: Icons.shop,
              title: "Concert Tickets",
              date: "April 23, 2024",
              amount: "-\$200.9",
            ),

            SizedBox(height: size.height * 0.03),

            MaterialButton(
              color: const Color(0xFF9C80E6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              //height: size.height*0.5,
              padding: EdgeInsets.all(15),
              child: Text(
                "Show all",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.white),
              ),
             onPressed: () {
              showAddTransaction(context);
             },
            ),
          ],
        ),
      ),
    );
  }
}
