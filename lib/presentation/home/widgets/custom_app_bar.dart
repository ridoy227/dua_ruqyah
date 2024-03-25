import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.percentHeight, // Adjust the height as needed
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Handle drawer functionality
            },
          ),
           Expanded(
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: eighteenPx,
                  fontWeight: FontWeight.w500,
                )
                
                //  TextStyle(
                //   fontSize: fourteenPx,
                //   fontWeight: FontWeight.bold,
                // ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search,),
            onPressed: () {
              // Handle search functionality
            },
          ),
        ],
      ),
    );
  }
}