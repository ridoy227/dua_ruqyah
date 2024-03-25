import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/presentation/home/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: "Dua & Ruqyah",),
          Expanded(
            child: Center(
              child: Text('Home Page'),
            ),
          ),
        ],
      ),
    );
  }
}

