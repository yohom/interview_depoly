import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key, required this.titleHeight});

  final double titleHeight;

  @override
  Widget build(BuildContext context) {
    return DecoratedColumn(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      padding: const EdgeInsets.all(12),
      safeArea: const SafeAreaConfig.top(),
      decoration: const BoxDecoration(color: Colors.grey),
      children: [
        // Opacity会比较消耗资源
        Opacity(
          opacity: titleHeight / 48,
          child: DecoratedRow(
            height: titleHeight,
            alignment: Alignment.topCenter,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('标题栏', style: context.textTheme.headlineSmall),
              const IconButton(
                onPressed: doNothing,
                icon: Icon(Icons.more),
              ),
            ],
          ),
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
    );
  }
}
