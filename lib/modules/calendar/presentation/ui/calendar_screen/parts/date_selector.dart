import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showDateSelector(
  BuildContext context,
) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      builder: (c) => DateSelector());
}

class DateSelector extends StatefulWidget {
  const DateSelector({Key? key}) : super(key: key);

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  late ScrollController scrollController;


  @override
  void initState() {
    scrollController=ScrollController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select date',
                  style: darkStyle(context)!
                      .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Container(width: 100,
                    child: ListWheelScrollView(controller:scrollController ,
                        physics: const FixedExtentScrollPhysics(),
                        useMagnifier: true,magnification: 1.3,
                        itemExtent: 30,
                        children: List.generate(20, (index) => Text('2000'))),
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
