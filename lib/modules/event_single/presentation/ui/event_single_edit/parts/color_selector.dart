import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/core/assets/constants/app_icons.dart';
import 'package:calendar_app/core/assets/constants/app_resources.dart';
import 'package:calendar_app/modules/calendar/domain/entity/color.dart';
import 'package:calendar_app/utils/functions.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColorSelector extends StatefulWidget {
  final Function(ColorEntity) onSelect;

  final ColorEntity? color;

  ColorSelector({required this.onSelect, this.color, Key? key})
      : super(key: key);

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  List<ColorEntity> colors = AppResources.colorList;

  late ColorEntity currentColor;

  @override
  void initState() {
    if (widget.color != null) {
      var item = findColorEntityByHex(widget.color!.hex);
      if (item != null) {
        currentColor = item;
      } else {
        currentColor = colors.first;
      }
    } else {
      currentColor = colors.first;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Priority color',
              style: darkStyle(context)!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 9),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: backgoundGrey),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 23,
                    height: 20,
                    color: currentColor.color,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  DropdownButton<ColorEntity>(
                    icon: SvgPicture.asset(
                      AppIcons.iArrowDown,
                      width: 24,
                      height: 24,
                      color: blue,
                    ),
                    elevation: 0,
                    underline: SizedBox(),
                    value: currentColor,
                    items: colors
                        .map((e) => DropdownMenuItem<ColorEntity>(
                            value: e,
                            child: Container(
                              height: 30,
                              color: e.color,
                            )))
                        .toList(),
                    onChanged: (ColorEntity? value) {
                      widget.onSelect(value!);
                      setState(() {
                        currentColor = value!;
                      });
                      print(value.toString());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
