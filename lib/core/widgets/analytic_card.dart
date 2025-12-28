import 'package:flutter/material.dart';


class AnalysticCard extends StatelessWidget {
  final String title;
  final String num;
  final Color color;

  const AnalysticCard({super.key,
    required this.num,
    required this.title,
    required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Card(
          color: color,
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
                Text(title,style: Theme.of(context).textTheme.titleLarge,),
                SizedBox(height: size.height*0.05),
                Text(num,style: Theme.of(context).textTheme.titleMedium,),
              ],
            ),
          ),
        )
      ],
    );
  }
}
