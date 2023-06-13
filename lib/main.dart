import 'package:calendar_app/core/assets/theme/theme.dart';
import 'package:calendar_app/core/data/database/db.dart';
import 'package:calendar_app/modules/calendar/data/repository/calendar_impl.dart';
import 'package:calendar_app/modules/calendar/domain/usecase/get_day_events.dart';
import 'package:calendar_app/modules/calendar/presentation/bloc/day_events_bloc.dart';
import 'package:calendar_app/modules/calendar/presentation/ui/calendar_screen/calendar_screen.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single/event_single_screen.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single_edit/event_single_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final db = LocaleDataBase();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await db.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (c) => DayEventsBloc(
          getEvents: GetDayEventsUseCase(repo: CalendarRepositoryImpl()))
        ..add(DayEventsEvent.getEvents(DateTime.now())),
      child: MaterialApp(
        title: 'Calendar App',
        theme: AppTheme.theme(),
        home: CalendarScreen(),
      ),
    );
  }
}
