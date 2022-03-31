import 'package:flutter/material.dart';
import 'package:lesson_x/constants/size_config.dart';

class LangContainer extends StatelessWidget {
  final topBorder;
  final bottomBorder;
  final name;
  final flag;
  

  const LangContainer(
      {Key? key,
      this.bottomBorder,
      this.topBorder,
      required this.flag,
      this.name, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getHeight(80),
      width: getWidth(343),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(topBorder ?? 0),
            bottom: Radius.circular(bottomBorder ?? 0),
          ),
          color: const Color(0xFFF2F1F7),
          border: Border.all(color: const Color(0xFFF2F1F7))),
      child: Row(
        children: [
          SizedBox(width: getWidth(16)),
          CircleAvatar(
            radius: getHeight(20),
            backgroundImage: AssetImage(flag),
          ),
          SizedBox(
            width: getWidth(20),
          ),
          Text(
            name ?? "",
            style: TextStyle(
              fontSize: getHeight(18),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
