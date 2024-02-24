import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/add_notes_cubit/add_notes_cubit.dart';


class CustomColorPicker extends StatelessWidget {
  const CustomColorPicker({super.key, required this.colorPicked, required this.color});
  final bool colorPicked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return colorPicked
        ?  CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 20,
            ),
          )
        :  CircleAvatar(
            backgroundColor: color,
            radius: 24,
          );
  }
}

class CustomColorPickerListView extends StatefulWidget {
  const CustomColorPickerListView({super.key});

  @override
  State<CustomColorPickerListView> createState() =>
      _CustomColorPickerListViewState();
}

class _CustomColorPickerListViewState extends State<CustomColorPickerListView> {
  int colorIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  colorIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                  setState(() {});
                },
                child: CustomColorPicker(
                  color: kColors[index],
                  colorPicked: colorIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
