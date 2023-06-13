import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/core/assets/constants/app_icons.dart';
import 'package:calendar_app/modules/calendar/data/repository/calendar_impl.dart';
import 'package:calendar_app/modules/calendar/domain/usecase/get_day_events.dart';
import 'package:calendar_app/modules/calendar/presentation/bloc/day_events_bloc.dart';
import 'package:calendar_app/modules/calendar/presentation/ui/calendar_screen/parts/calendar.dart';
import 'package:calendar_app/modules/calendar/presentation/ui/calendar_screen/parts/calendar_topbar.dart';
import 'package:calendar_app/modules/calendar/presentation/ui/calendar_screen/parts/day_event_list.dart';
import 'package:calendar_app/modules/calendar/presentation/ui/calendar_screen/parts/schedule_button.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jiffy/jiffy.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime dateTime = DateTime.now();
  DateTime today = DateTime.now();
  DateTime viewDate = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CalendarTopBar(
                onDateChanged: (newDate) {
                  setState(() {
                    dateTime = newDate;
                    viewDate=newDate;
                    context
                        .read<DayEventsBloc>()
                        .add(DayEventsEvent.getEvents(dateTime));
                  });
                },
                dateTime: viewDate,
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 410,
                child: Calendar(viewDate: viewDate,
                  today: today,
                  dateTime: dateTime,
                  onTapLeft: () {
                    setState(() {
                      dateTime = Jiffy(dateTime).subtract(months: 1).dateTime;

                    });
                  },
                  onTapRight: () {
                    setState(() {
                      dateTime = Jiffy(dateTime).add(months: 1).dateTime;

                    });
                  },
                  onSelectDate: (DateTime newDate) {
                    setState(() {
                      dateTime = newDate;
                      viewDate=newDate;
                      context
                          .read<DayEventsBloc>()
                          .add(DayEventsEvent.getEvents(dateTime));
                    });
                  },
                ),
              ),
              ScheduleButton(
                today: today,
                currentDate: dateTime,
              ),
              const SizedBox(
                height: 18,
              ),
              const Expanded(child: DayEventList()),
              SizedBox(
                height: 16 + MediaQuery.of(context).padding.bottom,
              )
            ],
          ),
        ),
      );
}
