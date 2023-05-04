import 'package:chnsmile_flutter/widget/time_picker/default_style.dart';
import 'package:chnsmile_flutter/widget/time_picker/model/date_item_model.dart';
import 'package:chnsmile_flutter/widget/time_picker/model/date_mode.dart';
import 'package:chnsmile_flutter/widget/time_picker/model/pduration.dart';
import 'package:chnsmile_flutter/widget/time_picker/model/suffix.dart';
import 'package:chnsmile_flutter/widget/time_picker/picker_style.dart';
import 'package:chnsmile_flutter/widget/time_picker/route/date_picker_route.dart';
import 'package:flutter/material.dart';

class Pickers {
  /// 时间选择器
  /// [Suffix] : 每列时间对应的单位  默认：中文常规  Suffix(years: '年',month: '月');
  /// [selectDate] : 初始化选中时间  默认现在
  ///    PDuration.now();
  ///    PDuration.parse(DateTime.parse('20210139'));
  ///    PDuration(year: 2020,month: 2);
  /// [maxDate] : 最大时间 用法同上
  ///     tip: 当只有单列数据，该限制不产生关联 只针对单列item限制，比如 maxDate>day = 3  minDate>day = 10,那么所有的月份都只显示3-10之间
  /// [minDate] : 最小时间 用法同上
  /// [mode] : 时间选择器所显示样式  16 种时间样式 默认：DateMode.YMD
  static void showDatePicker(BuildContext context,
      {DateMode mode: DateMode.YMD,
      PDuration selectDate,
      PDuration maxDate,
      PDuration minDate,
      Suffix suffix,
      PickerStyle pickerStyle,
      DateCallback onChanged,
      DateCallback onConfirm,
      Function(bool isCancel) onCancel,
      bool overlapTabBar = false}) {
    if (pickerStyle == null) {
      pickerStyle = DefaultPickerStyle();
    }
    if (pickerStyle.context == null) {
      pickerStyle.context = context;
    }

    if (selectDate == null) selectDate = PDuration.now();
    if (suffix == null) suffix = Suffix.normal();

    // 解析是否有对应数据
    DateItemModel dateItemModel = DateItemModel.parse(mode);

    if (maxDate == null) maxDate = PDuration(year: 2100);
    if (minDate == null) minDate = PDuration(year: 1900);

    if ((dateItemModel.day || dateItemModel.year)) {
      if (intEmpty(selectDate.year)) {
        print('picker  Tip >>> initDate未设置years，默认设置为now().year');
        selectDate.year = DateTime.now().year;
      }

      /// 如果有年item ，必须限制
      if (intEmpty(maxDate.year)) maxDate.year = 2100;
      if (intEmpty(minDate.year)) minDate.year = 1900;

      // print('longer >>> ${minDate.year}');

      if (dateItemModel.month || dateItemModel.day) {
        assert(minDate.year > 1582, 'min Date Year must > 1582');
      }
    }

    Navigator.of(context, rootNavigator: overlapTabBar).push(DatePickerRoute(
      mode: mode,
      initDate: selectDate,
      maxDate: maxDate,
      minDate: minDate,
      suffix: suffix,
      pickerStyle: pickerStyle,
      onChanged: onChanged,
      onConfirm: onConfirm,
      onCancel: onCancel,
      // theme: Theme.of(context, shadowThemeOnly: true),
      theme: Theme.of(context),
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    ));
  }
}
