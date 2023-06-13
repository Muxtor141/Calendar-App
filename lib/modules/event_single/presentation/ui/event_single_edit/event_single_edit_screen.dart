import 'package:calendar_app/core/assets/colors/colors.dart';
import 'package:calendar_app/core/assets/constants/app_icons.dart';
import 'package:calendar_app/globals/widgets/interaction/w_button.dart';
import 'package:calendar_app/modules/calendar/data/model/event.dart';
import 'package:calendar_app/modules/calendar/data/repository/calendar_impl.dart';
import 'package:calendar_app/modules/calendar/domain/entity/color.dart';
import 'package:calendar_app/modules/calendar/domain/entity/day_event.dart';
import 'package:calendar_app/modules/calendar/domain/usecase/add_event.dart';
import 'package:calendar_app/modules/calendar/domain/usecase/update_event.dart';
import 'package:calendar_app/modules/calendar/presentation/bloc/day_events_bloc.dart';
import 'package:calendar_app/modules/event_single/presentation/bloc/edit/event_edit_bloc.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single_edit/parts/color_selector.dart';
import 'package:calendar_app/modules/event_single/presentation/ui/event_single_edit/parts/labeled_field.dart';
import 'package:calendar_app/utils/action_status.dart';
import 'package:calendar_app/utils/functions.dart';
import 'package:calendar_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventSingleEditScreen extends StatefulWidget {
  final DateTime? dateTime;
  final bool isEdit;
  final DayEventEntity? entity;

  const EventSingleEditScreen(
      {this.dateTime, required this.isEdit, this.entity, Key? key})
      : super(key: key);

  @override
  State<EventSingleEditScreen> createState() => _EventSingleEditScreenState();
}

class _EventSingleEditScreenState extends State<EventSingleEditScreen> {
  late EventEditBloc editBloc;

  ColorEntity selectedColor = ColorEntity(color: Colors.orange, hex: 'FFA500');

  late TextEditingController _nameController;
  late TextEditingController _descController;
  late TextEditingController _locationController;
  late TextEditingController _timeController;
  late CalendarRepositoryImpl repo = CalendarRepositoryImpl();

  @override
  void initState() {
    if (widget.entity != null) {
      var color = findColorEntityByHex(widget.entity!.colorHex);
      if (color != null) {
        selectedColor = color;
      }
    }

    _nameController = TextEditingController(
        text: widget.entity != null ? widget.entity!.name : '');
    _descController = TextEditingController(
        text: widget.entity != null ? widget.entity!.desc : '');
    _locationController = TextEditingController(
        text: widget.entity != null ? widget.entity!.location : '');
    _timeController = TextEditingController(
        text: widget.entity != null ? widget.entity!.time : '');

    editBloc = EventEditBloc(
        AddEventUseCase(repo: repo), UpdateEventUseCase(repo: repo));
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    _locationController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: editBloc,
        child: Scaffold(
          backgroundColor: white,
          appBar: AppBar(
            toolbarHeight: 0,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    AppIcons.arrowLeft,
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                LabeledField(
                  label: 'Event name',
                  controller: _nameController,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: LabeledField(
                    label: 'Event description',
                    isMultiline: true,
                    controller: _descController,
                  ),
                ),
                ColorSelector(
                  color: selectedColor,
                  onSelect: (color) {
                    selectedColor = color;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, top: 16),
                  child: LabeledField(
                    suffixIcon: AppIcons.location,
                    label: 'Event location',
                    controller: _locationController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: LabeledField(
                    label: 'Event time',
                    controller: _timeController,
                  ),
                ),
                const Spacer(),
                BlocBuilder<EventEditBloc, EventEditState>(
                  builder: (context, state) {
                    return WButton(
                      isLoading: state.status == ActionStatus.inProcess,
                      borderRadius: 8,
                      onTap: () {
                        if (_nameController.text.isNotEmpty &&
                            _timeController.text.isNotEmpty &&
                            _locationController.text.isNotEmpty &&
                            _descController.text.isNotEmpty) {
                          if (widget.isEdit) {
                            print('update');
                            var model = EventModel(
                                date: widget.dateTime.toString(),
                                day: 0,
                                location: _locationController.text,
                                id: widget.entity!.id,
                                desc: _descController.text,
                                name: _nameController.text,
                                month: 0,
                                time: _timeController.text,
                                colorHex: selectedColor.hex,
                                year: 0);
                            editBloc.add(
                                EventEditEvent.addEvent(model, onSuccess: () {
                              Navigator.pop(context, model);
                              context.read<DayEventsBloc>().add(
                                  const DayEventsEvent.refreshCurrentList());
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                  'Event informations updated',
                                  style: whiteStyle(context)!.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                backgroundColor: blue,
                              ));
                            }, isEdit: true));
                          } else {
                            print('add');
                            editBloc.add(EventEditEvent.addEvent(
                                EventModel(
                                    date: widget.dateTime.toString(),
                                    day: widget.dateTime!.day,
                                    location: _locationController.text,
                                    id: widget.dateTime.hashCode,
                                    desc: _descController.text,
                                    name: _nameController.text,
                                    month: widget.dateTime!.month,
                                    time: _timeController.text,
                                    colorHex: selectedColor.hex,
                                    year: widget.dateTime!.year),
                                onSuccess: () {
                              context.read<DayEventsBloc>().add(
                                  const DayEventsEvent.refreshCurrentList());
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                  'New event added',
                                  style: whiteStyle(context)!.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                backgroundColor: blue,
                              ));
                            }, isEdit: false));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              'Please fill all fields above ',
                              style: whiteStyle(context)!.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            backgroundColor: Colors.grey,
                          ));
                        }
                      },
                      height: 46,
                      text: widget.isEdit ? 'Update' : 'Add',
                      textColor: white,
                      color: blue,
                    );
                  },
                ),
                SizedBox(
                  height: 16 + MediaQuery.of(context).padding.bottom,
                )
              ],
            ),
          ),
        ),
      );
}
