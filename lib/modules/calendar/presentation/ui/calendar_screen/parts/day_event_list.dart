import 'package:calendar_app/modules/calendar/presentation/bloc/day_events_bloc.dart';
import 'package:calendar_app/modules/calendar/presentation/bloc/day_events_bloc.dart';
import 'package:calendar_app/modules/calendar/presentation/ui/calendar_screen/widgets/event_card.dart';
import 'package:calendar_app/utils/action_status.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DayEventList extends StatelessWidget {
  const DayEventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: BlocBuilder<DayEventsBloc, DayEventsState>(
          builder: (context, state) {
            if (state.status == ActionStatus.inProcess) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            } else {
              if (state.list.isEmpty) {
                return Center(
                  child: Text(
                    'No events for this day',
                    style: darkStyle(context)!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                );
              } else {
                return ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: state.list.length,
                  itemBuilder: (c, index) => EventCard(
                    entity: state.list[index],
                  ),
                  separatorBuilder: (c, index) => const SizedBox(
                    height: 14,
                  ),
                );
              }
            }
          },
        ),
      );
}
