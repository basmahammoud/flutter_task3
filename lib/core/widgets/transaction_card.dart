import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String date;
  final String amount;

  const TransactionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Container(
        height: size.height * 0.12,
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xD3CA8BFA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Icon(icon)),
            ),
            SizedBox(width: size.width * 0.05),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                subtitle: Text(
                  date,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                trailing: Text(
                 amount,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
