import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/core/assets/constants/app_icons.dart';
import 'package:calendar_app/modules/calendar/presentation/ui/calendar_screen/parts/calendar_days.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jiffy/jiffy.dart';

class Calendar extends StatelessWidget {
  final DateTime dateTime;
  final DateTime today;
  final DateTime viewDate;
  final VoidCallback onTapLeft;
  final VoidCallback onTapRight;
  final Function(DateTime dateTime) onSelectDate;

  const Calendar(
      {required this.dateTime,
      required this.onTapLeft,
      required this.onTapRight,
      required this.today,
      required this.onSelectDate,
      required this.viewDate,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            children: [
              Text(
                Jiffy(dateTime).format('MMMM'),
                style: darkStyle(context)!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              const Spacer(),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: onTapLeft,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration:
                      const BoxDecoration(shape: BoxShape.circle, color: celid),
                  child: SvgPicture.asset(
                    AppIcons.iArrowLeft,
                    width: 15,
                    height: 15,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: onTapRight,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration:
                      const BoxDecoration(shape: BoxShape.circle, color: celid),
                  child: SvgPicture.asset(
                    AppIcons.iArrowRight,
                    width: 15,
                    height: 15,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
              child: CalendarDays(viewDate: viewDate,
            today: today,
            currentDate: dateTime, onSelectDate:onSelectDate,
          ))
        ],
      );
}
