import 'package:flutter/material.dart';
import 'package:shop_app_flutter/utils/app_layout.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;

  const Badge(
      {super.key,
      required this.child,
      required this.value,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(2)),
            // color: Theme.of(context).accentColor,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              color: color ?? Theme.of(context).colorScheme.secondary,
            ),
            constraints: BoxConstraints(
              minWidth: AppLayout.getWidth(16),
              minHeight: AppLayout.getHeight(16),
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style:const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}
