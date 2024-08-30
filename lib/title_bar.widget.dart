import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedStack(
      sliver: true,
      children: [
        Container(color: Colors.grey, height: 140),
        DecoratedColumn(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          padding: const EdgeInsets.all(12),
          safeArea: const SafeAreaConfig.top(),
          children: [
            DecoratedRow(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('标题栏', style: context.textTheme.headlineSmall),
                const IconButton(
                  onPressed: doNothing,
                  icon: Icon(Icons.more),
                ),
              ],
            ),
            DecoratedText(
              '导航栏',
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
            )
          ],
        ),
      ],
    );
  }
}
