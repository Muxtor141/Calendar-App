import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/core/assets/constants/app_icons.dart';
import 'package:calendar_app/globals/widgets/interaction/w_button.dart';
import 'package:calendar_app/globals/widgets/popups/adaptive_dialog.dart';
import 'package:calendar_app/modules/calendar/data/repository/calendar_impl.dart';
import 'package:calendar_app/modules/calendar/domain/entity/day_event.dart';
import 'package:calendar_app/modules/calendar/domain/usecase/delete_event.dart';
import 'package:calendar_app/modules/calendar/presentation/bloc/day_events_bloc.dart';
import 'package:calendar_app/modules/event_single/presentation/bloc/single/event_single_bloc.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single/parts/top_bar.dart';
import 'package:calendar_app/utils/functions.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventSingleScreen extends StatefulWidget {
  final DayEventEntity entity;

  const EventSingleScreen({required this.entity, Key? key}) : super(key: key);

  @override
  State<EventSingleScreen> createState() => _EventSingleScreenState();
}

class _EventSingleScreenState extends State<EventSingleScreen> {
  late EventSingleBloc eventSingleBloc;
  late DayEventEntity entity;

  @override
  void initState() {
    entity=widget.entity;
    eventSingleBloc =
        EventSingleBloc(DeleteEventUseCase(repo: CalendarRepositoryImpl()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: eventSingleBloc,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: fromHexToColor(widget.entity.colorHex),
            toolbarHeight: 0,
            elevation: 0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EventSingleTopBar(onUpdated: (newEntity){
                setState(() {
                  entity=newEntity;
                });
              },
                entity: entity,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const SizedBox(
                      //   height: 28,
                      // ),
                      // Text(
                      //   'Reminder',
                      //   style: darkStyle(context)!
                      //       .copyWith(fontWeight: FontWeight.w600, fontSize: 16),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Text(
                      //   '15 minutes befor',
                      //   style: greyStyle(context)!
                      //       .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                      // ),
                      const SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Description',
                        style: darkStyle(context)!.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        entity.desc,
                        style: greyStyle(context)!.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              BlocBuilder<EventSingleBloc, EventSingleState>(
                builder: (context, state) {
                  return WButton(
                    margin: EdgeInsets.only(
                        bottom: 16 + MediaQuery.of(context).padding.bottom,
                        left: 28,
                        right: 28),
                    borderRadius: 10,
                    color: chablis,
                    onTap: () {
                      showAdaptiveDialog(context,
                          title: 'Delete event',
                          positiveButtonTitle: 'Delete',
                          bodyText: 'You are going to delete this event',
                          onTapPositive: (c) {
                        eventSingleBloc.add(EventSingleEvent.delete(
                           entity.id, onSuccess: () {
                          Navigator.pop(c);
                          context
                              .read<DayEventsBloc>()
                              .add(const DayEventsEvent.refreshCurrentList());
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: blue,
                              content: Text(
                                'Event successfully deleted',
                                style: whiteStyle(context)!.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )));
                        }));
                      });
                    },
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppIcons.delete,
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Delete',
                          style: darkStyle(context)!.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      );
}
