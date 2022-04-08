import 'package:flutter/material.dart';
import 'package:lesson_x/constants/size_config.dart';

class ContAdd extends StatelessWidget {
  final String? name;
  const ContAdd({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: getHeight(56),
        width: getWidth(359),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(
          child: Text(name ?? "",
            style: TextStyle(
              color: Colors.black,
              fontSize: getWidth(17),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
