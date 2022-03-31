import 'package:flutter/material.dart';
import 'package:lesson_x/constants/color_const.dart';
import 'package:lesson_x/constants/size_config.dart';


class ContainerButton extends StatelessWidget {
  final top;
  final bottom;
  final name;
  final onTap;
  final color;
  const ContainerButton(
      {Key? key, this.name, this.bottom, this.color, this.onTap, this.top})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          top: top ?? 0,
          bottom: bottom ?? 0,
        ),
        height: getHeight(56),
        width: getWidth(343),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: color ?? ConsColors.green,
        ),
        child: Center(
          child: Text(
            name ?? " ",
            style: TextStyle(
              color: Colors.white,
              fontSize: getHeight(18),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      onTap: onTap ?? (){},
    );
  }
}
