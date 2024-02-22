import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  const Text(
                    'Notes',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.05),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.search,
                      size: 32,
                    ),
                  )
                ],
              );
  }
}