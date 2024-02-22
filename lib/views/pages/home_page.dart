import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
          child: Column(
            children: [
               CustomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
