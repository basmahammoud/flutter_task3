import 'package:flutter/material.dart';


class DetaliesBudgetCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String spent;
  final String num;

  const DetaliesBudgetCard({super.key,
    required this.title,
    required this.spent,
    required this.icon,
    required this.num});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    double progress = 0.75;

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Theme.of(context).colorScheme.secondary,
      child: Container(
        width: size.width * 0.9,
        padding: const EdgeInsets.all(20),
        child:Column(
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(width: size.width*0.05,),
                Text(title,style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            SizedBox(height: size.height*0.03,),

            Text(spent,style: Theme.of(context).textTheme.titleMedium),

            SizedBox(height: size.height*0.03,),
            Row(children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: Color(0xFFE4DBEF),
                child: Text(num,
                  style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              ),
              SizedBox(width: size.width*0.05,),
              Container(
                width: 200,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: progress,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )

            ],)
          ],
        ),
      )

    );
  }
}
