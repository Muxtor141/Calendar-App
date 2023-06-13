import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/globals/widgets/interaction/w_textfield.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabeledField extends StatelessWidget {
  final String label;
  final String? suffixIcon;
  final bool isMultiline;
  final TextEditingController? controller;

  const LabeledField(
      {this.controller,
      required this.label,
      this.suffixIcon,
      this.isMultiline = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: darkStyle(context)!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            const SizedBox(
              height: 4,
            ),
            WTextField(
              keyBoardType: isMultiline ? TextInputType.multiline : null,
              maxLines:isMultiline? 5:1,
              suffixIcon: suffixIcon,
              suffixIconColor: blue,
              controller: controller,
              onChanged: (text) {},
            ),
          ],
        ),
      );
}
