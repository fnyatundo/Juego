import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Leaderboard',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: ClipRRect(child: Icon(Icons.person_2)),

                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Symbols.arrow_circle_up,
                            fill: 1,
                            weight: 700.0,
                            grade: 200,
                            size: 30,
                            color: Theme.of(
                              context,
                            ).colorScheme.onPrimaryFixedVariant,
                          ),
                          SizedBox(width: 16),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(
                                context,
                              ).colorScheme.onPrimaryFixedVariant,
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.w900,
                                      color: ColorScheme.of(context).onPrimary,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      title: Text('Francis Nyatundo'),
                      tileColor: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
