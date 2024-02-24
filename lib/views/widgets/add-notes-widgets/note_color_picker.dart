import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  List<Color> colors = const [
    Color(0xff1BE7FF),
    Color(0xff6EEB83),
    Color(0xffE4FF1A),
    Color(0xffFFB800),
    Color(0xffFF5714),
    Color(0xffE6E8E6),
    Color(0xff81726A),
    Color(0xffF4FEC1),
    Color(0xffD9F9A5),
    Color(0xffD74E09),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  colorIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  setState(() {});
                },
                child: CustomColorPicker(
                  color: colors[index],
                  colorPicked: colorIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
