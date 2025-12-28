import 'package:flutter/material.dart';


class BalanceCard extends StatelessWidget {
  final String name;
  final String num;
  final String date;

  const BalanceCard({super.key,
    required this.name,
    required this.num,
    required this.date});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
            width: size.width * 0.8,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(name,style: Theme.of(context).textTheme.titleLarge,),
                 SizedBox(height: size.height*0.05),
                Text(num,style: Theme.of(context).textTheme.titleMedium,),
                SizedBox(height: size.height*0.05),
                Text(date,style: Theme.of(context).textTheme.titleMedium,),
              ],
            ),
          ),
        )
      ],
    );
  }
}
