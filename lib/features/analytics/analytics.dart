import 'package:flutter/material.dart';
import 'package:flutter_task3/core/widgets/analytic_card.dart';
import '../../core/widgets/custom_app_bar.dart';

class Analyticspage extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const Analyticspage({
    super.key,
    required this.onToggleTheme,
  });


  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: "Analytics",
        onToggleTheme: onToggleTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height*0.05,),
            Align(
              alignment: Alignment.topCenter,
              child: AnalysticCard(
                title: 'Total income',
                num: '\$3,200',
                color:Theme.of(context).colorScheme.secondary,
                  ),
            ),
            SizedBox(height: size.height*0.05,),
            Align(
              alignment: Alignment.topCenter,
              child: AnalysticCard(
                title: 'Total income',
                num: '\$3,200',
                color:Theme.of(context).colorScheme.primary,

              ),
            ),
            SizedBox(height: size.height*0.05,),
            Align(
              alignment: Alignment.topCenter,
              child: AnalysticCard(
                title: 'Total income',
                num: '\$3,200',
                color:Theme.of(context).colorScheme.surface,

              ),
            ),

          ],
        ),
      ),
    );
  }
}
