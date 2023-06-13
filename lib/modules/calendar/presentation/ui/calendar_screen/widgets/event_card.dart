import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/core/assets/constants/app_icons.dart';
import 'package:calendar_app/modules/calendar/domain/entity/day_event.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single/event_single_screen.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single/widgets/info_row.dart';
import 'package:calendar_app/utils/functions.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';





class EventCard extends StatelessWidget {
  final DayEventEntity entity;
  const EventCard({
    required this.entity,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(onTap: (){
    Navigator.push(context, CupertinoPageRoute(builder: (c)=>EventSingleScreen(entity: entity,)));
  },
    child: Container(
          decoration: BoxDecoration(
              color: fromHexToColor(entity.colorHex).withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration:  BoxDecoration(
                    color:fromHexToColor(entity.colorHex),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10))),
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        entity.name,
                        style: darkStyle(context)!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: darkBlue),
                      ),
                      Text(
                        entity.desc,
                        style: darkStyle(context)!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 8,
                            color: darkBlue),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          InfoRow(
                            title: entity.time,
                            icon: AppIcons.clock,
                            iconColor: darkBlue,
                            textStyle: darkStyle(context)!.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: darkBlue),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InfoRow(
                            iconColor: darkBlue,
                            title: entity.location,
                            icon: AppIcons.location,
                            textStyle: darkStyle(context)!.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: darkBlue),
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 12,
              )
            ],
          ),
        ),
  );
}
