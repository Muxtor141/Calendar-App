import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarItem extends StatelessWidget {
  final DateTime today;
  final DateTime currentDate;
  final DateTime viewDate;
  final int index;
  final Function(DateTime) onSelectDate;

  const CalendarItem(
      {required this.today,
      required this.currentDate,
      required this.viewDate,
      required this.index,
      required this.onSelectDate,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                onSelectDate(
                    DateTime(currentDate.year, currentDate.month, index + 1));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: index + 1 == today.day &&
                                currentDate.month == today.month
                            ? blue
                            : Colors.transparent),
                    color: index + 1 == currentDate.day&&currentDate.month==viewDate.month
                        ? blue
                        : null,
                    shape: BoxShape.circle),
                padding: const EdgeInsets.all(4),
                child: Text(
                  (index + 1).toString(),
                  style: darkStyle(context)!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: index + 1 == currentDate.day&&currentDate.month==viewDate.month
                          ? white
                          : null),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      );
}
