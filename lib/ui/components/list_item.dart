import 'package:flutter/material.dart';

/// 両サイドにListTileと同じpaddingを付与したWidget
class ListItem extends StatelessWidget {
  final Widget child;

  const ListItem({super.key, required this.child});

  @override
  Widget build(BuildContext context) => SafeArea(
        top: false,
        bottom: false,
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: child,
      );
}
