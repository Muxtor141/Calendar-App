import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/core/assets/constants/app_icons.dart';
import 'package:calendar_app/modules/calendar/domain/entity/day_event.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single/widgets/info_row.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single_edit/event_single_edit_screen.dart';
import 'package:calendar_app/utils/functions.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventSingleTopBar extends StatelessWidget {
  final DayEventEntity entity;
  final Function(DayEventEntity) onUpdated;

  const EventSingleTopBar(
      {required this.entity, required this.onUpdated, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.fromLTRB(28, 18, 28, 20),
        decoration:  BoxDecoration(
            color: fromHexToColor(entity.colorHex),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      AppIcons.iArrowLeft,
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () async {
                    var data = await Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (c) => EventSingleEditScreen(
                                  entity: entity,
                                  isEdit: true,
                                )));
                    if (data != null) {
                      onUpdated(data as DayEventEntity);
                    }
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.pen,
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Edit',
                        style: whiteStyle(context)!.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              entity.name,
              style: whiteStyle(context)!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 26),
            ),
            const SizedBox(
              height: 12,
            ),
            InfoRow(title: entity.time, icon: AppIcons.clock),
            const SizedBox(
              height: 10,
            ),
            InfoRow(title: entity.location, icon: AppIcons.location),
          ],
        ),
      );
}
