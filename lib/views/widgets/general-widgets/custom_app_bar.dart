import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/general-widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 26,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(
          onTap: onTap ,
          icon: icon,
        )
      ],
    );
  }
}
