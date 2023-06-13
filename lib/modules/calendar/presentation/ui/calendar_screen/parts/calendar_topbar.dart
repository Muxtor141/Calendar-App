import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/core/assets/constants/app_icons.dart';
import 'package:calendar_app/modules/calendar/presentation/ui/calendar_screen/parts/date_selector.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jiffy/jiffy.dart';

class CalendarTopBar extends StatelessWidget {
  final DateTime dateTime;
  final Function(DateTime ) onDateChanged;

  const CalendarTopBar({required this.dateTime,required this.onDateChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                showDatePicker(
                    context: context,
                    initialDate: dateTime,
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2950),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: const ColorScheme.light(
                            primary: Colors.blue, // header background color
                            onPrimary: Colors.white, // header text color
                            onSurface: darkBlue, // body text color
                          ),
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              foregroundColor: black, // button text color
                            ),
                          ),
                        ),
                        child: child!,
                      );
                    }
                ).then((value) {
                  if(value!=null){
                    onDateChanged(value);
                  }

                });
              },
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            Jiffy(dateTime).format('EEEE'),
                            style: darkStyle(context)!.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                          Row(
                            children: [
                              Text(
                                '${dateTime.day.toString()} ${Jiffy(dateTime).format('MMMM yyyy')}',
                                style: darkStyle(context)!.copyWith(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              SvgPicture.asset(
                                AppIcons.iArrowDown,
                                width: 10,
                                height: 10,
                                color: black,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        AppIcons.bell,
                        width: 28,
                        height: 28,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
}
