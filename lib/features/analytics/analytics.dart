import 'package:flutter/material.dart';
import 'package:flutter_task3/core/widgets/analytic_card.dart';
import '../../core/widgets/custom_app_bar.dart';

class Analyticspage extends StatefulWidget {
  final VoidCallback onToggleTheme;

  const Analyticspage({super.key, required this.onToggleTheme});

  @override
  State<Analyticspage> createState() => _AnalyticspageState();
}

class _AnalyticspageState extends State<Analyticspage> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// صفحة واحدة داخل PageView
  Widget _buildAnalyticsPage({
    required String title,
    required String value,
    required Color color,
  }) {
    return Column(
      children: [
        const SizedBox(height: 24),
        // Chart placeholder
        Container(
          height: 180,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSecondary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text("Chart Placeholder", 
            style: Theme.of(context).textTheme.titleMedium),
          ),
        ),

        // card
        AnalysticCard(title: title, num: value, color: color),
      ],
    );
  }

  /// نقاط التنقل
  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        final isActive = _currentPage == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 12 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: isActive ? Colors.deepPurple : Colors.grey,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Analytics",
        onToggleTheme: widget.onToggleTheme,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildAnalyticsPage(
                  title: "Total Income",
                  value: "\$3,200",
                  color: Theme.of(context).colorScheme.primary,
                ),
                _buildAnalyticsPage(
                  title: "Total Expenses",
                  value: "\$1,850",
                  color: Theme.of(context).colorScheme.secondary,
                ),
                _buildAnalyticsPage(
                  title: "Savings",
                  value: "\$1,350",
                  color: Theme.of(context).colorScheme.surface,
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          _buildDotsIndicator(),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
