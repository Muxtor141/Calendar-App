import 'dart:ui';

import 'package:calendar_app/core/assets/constants/app_resources.dart';
import 'package:calendar_app/modules/calendar/domain/entity/color.dart';
import 'package:flutter/material.dart';

Color fromHexToColor(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

ColorEntity? findColorEntityByHex(String hex) {
  var item = AppResources.colorList.firstWhere((element) => element.hex == hex,
      orElse: () => ColorEntity(color: Colors.transparent, hex: ''));
  if(item.hex.isNotEmpty){
    return item;
  }
}
