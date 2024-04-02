import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/core/utility/utility.dart';
import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.percentHeight, 
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.navigatorPop(),
          ),
           Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: eighteenPx,
                fontWeight: FontWeight.w500,
              )
            ),
          ),
        ],
      ),
    );
  }
}