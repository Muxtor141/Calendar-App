import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/globals/widgets/interaction/w_button.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single_edit/event_single_edit_screen.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class ScheduleButton extends StatelessWidget {
  final DateTime today;
  final DateTime currentDate;
  const ScheduleButton({
    required this.today,
    required this.currentDate,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Schedule',
                style: darkStyle(context)!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                )),
            WButton(
              borderRadius: 16,
              color: blue,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              hasWidth: false,
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (c) => EventSingleEditScreen(
                              dateTime: currentDate, isEdit: false,
                            )));
              },
              child: Row(
                children: [
                  Text(
                    '+ Add Event',
                    style: whiteStyle(context)!
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 10),
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
