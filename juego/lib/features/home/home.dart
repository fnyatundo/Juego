import 'package:flutter/material.dart';

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
            Container(
              alignment: AlignmentDirectional.centerStart,
              height: 64,
              width: double.infinity,
              padding: EdgeInsets.only(top: 12, bottom: 12, left: 24),
              decoration: BoxDecoration(
                border: BoxBorder.all(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              child: Row(
                children: [
                  ClipRRect(child: Icon(Icons.person_2)),
                  SizedBox(width: 16),
                  Text(
                    'Francis Nyatundo',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
