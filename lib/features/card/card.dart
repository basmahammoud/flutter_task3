import 'package:flutter/material.dart';
import 'package:flutter_task3/core/widgets/balance_card.dart';

import '../../core/widgets/custom_app_bar.dart';

class CardsPage extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const CardsPage({
    super.key,
    required this.onToggleTheme,
  });


  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: "Cards",
        onToggleTheme: onToggleTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: size.height*0.05,),
            Align(
              alignment: Alignment.topCenter,
              child:   BalanceCard(
                  name: "visa",
                  num: "*** *** *** 1234",
                  date: "01/27"),
            ),

            SizedBox(height: 10,),

            BalanceCard(
                name: "visa",
                num: "*** *** *** 1234",
                date: "01/27"),
            SizedBox(height: 10,),
            BalanceCard(
                name: "visa",
                num: "*** *** *** 1234",
                date: "01/27"),
          ],
        ),
      ),
    );
  }
}
