import 'package:flutter/material.dart';

class ChipsBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> children;

  const ChipsBar({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
            // 左右はListTileと同様のpadding
            left: MediaQuery.viewPaddingOf(context).left == 0 ? 16 : 0,
            right: MediaQuery.viewPaddingOf(context).right == 0 ? 16 : 0,
            top: 4,
            bottom: 4,
          ),
          child: Row(
            children: List.generate(
              children.length * 2 - 1,
              (index) => index.isEven
                  ? children[index ~/ 2]
                  : const SizedBox(width: 8),
              growable: false,
            ),
          ),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
