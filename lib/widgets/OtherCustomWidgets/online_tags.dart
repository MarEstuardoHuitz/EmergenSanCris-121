import 'package:flutter/material.dart';

Widget onlineTagText({String? text, double? width}) {
  return Container(
    // width: width ?? 60,
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Mycolors.onlinetag,
          radius: 3.3,
        ),
        SizedBox(
          width: 6,
        ),
        MtCustomfontBold(
          text: text ?? "Online",
          fontsize: 12,
          color: Mycolors.onlinetag,
        )
      ],
    ),
  );
}
