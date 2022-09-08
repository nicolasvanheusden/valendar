


import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:valendar/presentation/core/colors.dart';

class PositionnedFloatingActionButton extends StatelessWidget {
  const PositionnedFloatingActionButton({Key? key, required this.onPressed, required this.iconData}) : super(key: key);

  final void Function()? onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return AlignPositioned(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.15,
          right: 10
        ),
        child: FloatingActionButton(
          elevation: 5,
          onPressed: onPressed,
          backgroundColor: yellowFFAD47,
          child: Icon(
            iconData,
            size: 40,
          ),
        ),
      ),
    );
  }
}