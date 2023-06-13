import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/modules/calendar/presentation/ui/calendar_screen/widgets/calendar_item.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class CalendarDays extends StatefulWidget {
  final DateTime today;
  final DateTime currentDate;
  final DateTime viewDate;

  final Function(DateTime dateTime) onSelectDate;

  const CalendarDays(
      {required this.today,
      required this.currentDate,
      required this.viewDate,
      required this.onSelectDate,
      Key? key})
      : super(key: key);

  @override
  State<CalendarDays> createState() => _CalendarDaysState();
}

class _CalendarDaysState extends State<CalendarDays> {
  int getRemainingWeekDaysCount(DateTime dateTime) {
    var firstDayOfMonth = getFirstDayOfMonth(dateTime);
    return firstDayOfMonth.weekday - 1;
  }

  DateTime getFirstDayOfMonth(DateTime dateTime) {
    return dateTime.subtract(Duration(days: dateTime.day - 1));
  }

  Expanded text(BuildContext context, String text) {
    return Expanded(
      child: Text(
        text,textAlign: TextAlign.center,
        style: greyStyle(context)!
            .copyWith(fontWeight: FontWeight.w500, fontSize: 12, ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            children: [
              text(context, 'Sun'),
              text(context, 'Mon'),
              text(context, 'Tue'),
              text(context, 'Wed'),
              text(context, 'Thu'),
              text(context, 'Fri'),
              text(context, 'Sat'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7),
              children: [
                ...List.generate(getRemainingWeekDaysCount(widget.currentDate),
                    (index) => const SizedBox()),
                ...List.generate(Jiffy(widget.currentDate).daysInMonth,
                    (index) {
                  return CalendarItem(viewDate: widget.viewDate,
                      today: widget.today,
                      currentDate: widget.currentDate,
                      index: index,
                      onSelectDate: widget.onSelectDate);
                })
              ],
            ),
          )
        ],
      );
}
