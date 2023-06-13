import 'package:calendar_app/core/assets/constants/app_icons.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoRow extends StatelessWidget {
  final String icon;
  final String title;
  final Color? iconColor;
  final TextStyle? textStyle;
  final double? iconSize;

  const InfoRow(
      {required this.title,
      required this.icon,
      this.iconColor,
      this.textStyle,
      this.iconSize,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              icon,
              width: iconSize ?? 18,
              height: iconSize ?? 18,
              color: iconColor,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: textStyle ??
                  whiteStyle(context)!
                      .copyWith(fontWeight: FontWeight.w500, fontSize: 10),
            )
          ],
        ),
      );
}
